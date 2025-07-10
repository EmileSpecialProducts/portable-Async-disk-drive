<p align="center">
  <a href="https://buymeacoffee.com/emilespecialproducts">
    <img alt="BuymeaCoffee" src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png">
  </a>
</p>
# portable-Async-disk-drive

This is a Async version of the 
You can see the <a href="https://youtu.be/4TL-1kFhhLU?si=0_FFTyLoHQfMEpkf"> YouTube Video</a>

This is the SD-Card example for esp-arduino 8266/ESP32/S2/S3/C3/C6.
Using the Arduino Release v3.2.1. and platformIO 

You will need a SDcard <=32Gb and formated FAT32.
Copy the SDRoot to the root of your SD card sodat index.htm is in the root.
Load the software in the ESP, and now you can see all the content of the SD card and edit it.

You can program a ESP by folowing this link [on GitHub](https://emilespecialproducts.github.io/ESP-SD-Async-Web-Server/upload.html) 
<h3>Devices ESP-32 (Clasic/S2/S3/C3/C6) / ESP8266</h3>
            <p>
                This will program the Async SD card Server software to the ESP-32 (Clasic/S2/S3/C3/C6) / ESP8266 device.
            </p>
            <table >
                <tr>
                    <th>Device</th>
                    <th>SD_CS</th>
                    <th>SD_CLK</th>
                    <th>SD_MOSI</th>
                    <th>SD_MISO</th>
                </tr>
                     <tr>
                    <td>ESP8266 4MB </td>
                    <td>15</td>
                    <td>14</td>
                    <td>13</td>
                    <td>12</td>
                </tr>
                <tr>
                    <td>ESP32-Clasic 4MB</td>
                    <td>5</td>
                    <td>18</td>
                    <td>23</td>
                    <td>19</td>                </tr>
                <tr>
                    <td>ESP32-S2 4MB</td>
                    <td>10</td>
                    <td>12</td>
                    <td>11</td>
                    <td>13</td>
                </tr>
                <tr>
                    <td>ESP32-S3 8MB</td>
                    <td>10</td>
                    <td>12</td>
                    <td>11</td>
                    <td>13</td>
                </tr>
                <tr>
                    <td>ESP32-C3 4MB</td>
                    <td>10</td>
                    <td>3</td>
                    <td>4</td>
                    <td>5</td>
                </tr>
                <tr>
                    <td>ESP32-C6 8MB</td>
                    <td>18</td>
                    <td>21</td>
                    <td>19</td>
                    <td>20</td>
                </tr>
            </table>
Added a <b>Wiki</b> to get you started.
