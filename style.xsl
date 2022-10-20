<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet >
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">
        <head>
          <link rel="icon" href="img/Pokeball.png"/>
          <title>Pokemon</title>
          <!-- Required meta tags -->
          <meta charset="utf-8"/>
          <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
          <link rel="stylesheet" href="style.css"/>
          <!-- Bootstrap CSS -->
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
          
        </head>
        <body style="font-family: 'Times New Roman', Times, serif;">
          <div class="container text-center text-white shadow-light p-0">
                <div class="cabecera" >
                  <div class="transparencia " style="padding-top: 30px;">
                  <div class="text ml-5 mr-5 text-transparent-white transparencia"><h1 style=" color: rgba(255, 255, 255, 0.678);"> POKEDEX </h1></div>
                    <div class="parrafo">
                      <p style="color: white; font-size: 20px; " >
                        <xsl:value-of select="pokedex/definition"></xsl:value-of>
                      </p>
                  </div>
                </div>
              </div>
              <div class="bg-gray-overlay pt-3 px-5 pb-5">
                <h2 class="text-transparent-white ">TYPES</h2>
                <div class="row justify-content-center mt-4 ">
                    <xsl:for-each select="pokedex/types/type">
                    <div class="col-12 col-md-6 col-xl-4 d-flex mb-2">
                        <div style="height: 65px" class="card w-100 pt-2 pb-2 mb-3 bg-transparent border-light border-2 rounded-1">
                          <img src="img/{.}_type.png" width="40px" class="mx-auto " alt=""/>
                          <h5 class= "mt-2"><xsl:value-of select="."></xsl:value-of></h5>
                        </div>
                      </div>
                    </xsl:for-each>
                </div>
                <h2 class="text-transparent-white">POKEMONS</h2>
                <div class="row justify-content-center mt-4 ">
                    <xsl:for-each select="pokedex/pokemon">
                    <div class="col-12 col-md-12 col-xl-6 col-lg-6 mb-5 flex-fill">
                        <div class="card card p-2 bg-transparent border-light border-2 rounded-1 text-left d-flex flex-row h-100">
                          <div class="flex-grow-0 d-flex flex-column justify-content-center">
                            <img src="https://assets.pokemon.com/assets/cms2/img/pokedex/detail/{dex}.png" alt=""/>
                          </div>
                          <div class="flex-grow-0 d-flex flex-column justify-content-center">
                            <h5 class="py-2">
                                <xsl:value-of select="species" />
                            </h5>
                            <ul>
                              <li>HP: <xsl:value-of select="baseStats/HP"/></li>
                              <li>ATK: <xsl:value-of select="baseStats/ATK"/></li>
                              <li>DEF: <xsl:value-of select="baseStats/DEF"/></li>
                              <li>SPD: 
                                  <xsl:choose>
                                    <xsl:when test="baseStats/SPD &gt; 99">
                                        <span class="text-danger">
                                            <xsl:value-of select="baseStats/SPD"/>
                                        </span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="baseStats/SPD"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                              </li>
                              <li>SATK: <xsl:value-of select="baseStats/SATK"/></li>
                              <li>SDEF: <xsl:value-of select="baseStats/SDEF"/></li>
                            </ul>
                            <p class="py-2">
                             <xsl:for-each select="types/type">
                             <img src="img/{.}_type.png" width="40px"  class="mr-2" alt=""/> 
                            </xsl:for-each>
                            </p>
                          </div>
                        </div>
                      </div>
                    </xsl:for-each>
                </div>
              </div>
              <div class="bg-footer text-body py-2 d-flex">
                <img class="img-fluid pl-3" alt="POKEBOLA" src="./img/Pokeball.png" />
                <h2 class="flex-grow-1 m-0 p-0 h-min-content align-self-center">
                  POKEDEX - Developed Valentina SB
                </h2>
                <img class=" pr-3 img-fluid" alt="POKEBOLA" src="./img/Pokeball.png" />
              </div>
            </div>
          <!-- Optional JavaScript -->
          <!-- jQuery first, then Popper.js, then Bootstrap JS -->
          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
          <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        </body>
      </html>

</xsl:template>
</xsl:stylesheet>