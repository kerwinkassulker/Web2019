<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rover.aspx.cs" Inherits="ThreeDGMweb.Rover" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

      <p>&nbsp;</p>
      <br />
    <h2 style="font-size: 14pt; color: #7030A0">&nbsp;Rover Robotics POC Demo</h2>

    <span style="font-size: large">
    <br />

        <div class="right">
        <button class="button btn-small" id="start">Start</button><br>
        <button class="button btn-small" id="stop">Stop</button>
      </div>

    <script type="text/javascript" src="https://static.sketchfab.com/api/sketchfab-viewer-1.4.2.js"></script>

        <!-- Insert an empty iframe -->
    <iframe width="640" height="480" src="" frameborder="0" id="api-frame" allow="autoplay; fullscreen; vr" allowvr allowfullscreen mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

    <!-- Initialize the viewer -->
    <script type="text/javascript">
    var iframe = document.getElementById( 'api-frame' );
    var uid = '5c471ac3e8154b929ab766f13883edec';

    // By default, the latest version of the viewer API will be used.
    var client = new Sketchfab( iframe );

    // Alternatively, you can request a specific version.
    // var client = new Sketchfab( '1.4.2', iframe );

    client.init( uid, {
        success: function onSuccess( api ){
            api.start();
            api.addEventListener( 'viewerready', function() {

                // API is ready to use
                // Insert your code here
                console.log( 'Viewer is ready' );

            } );
        },
        error: function onError() {
            console.log( 'Viewer error' );
        }
    } );
    </script>

         
  <%--  <iframe width="640" height="480" src="https://sketchfab.com/models/5c471ac3e8154b929ab766f13883edec/embed" frameborder="0" allow="autoplay; fullscreen; vr" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

    <p style="font-size: 13px; font-weight: normal; margin: 5px; color: #4A4A4A;">
        <a href="https://sketchfab.com/models/5c471ac3e8154b929ab766f13883edec?utm_medium=embed&utm_source=website&utm_campaign=share-popup" target="_blank" style="font-weight: bold; color: #1CAAD9;">Rover_POC</a>
        by <a href="https://sketchfab.com/3DGuidedMarketing?utm_medium=embed&utm_source=website&utm_campaign=share-popup" target="_blank" style="font-weight: bold; color: #1CAAD9;">3DGM</a>
        on <a href="https://sketchfab.com?utm_medium=embed&utm_source=website&utm_campaign=share-popup" target="_blank" style="font-weight: bold; color: #1CAAD9;">Sketchfab</a>
    </p>--%>
        
    </span>

</asp:Content>
