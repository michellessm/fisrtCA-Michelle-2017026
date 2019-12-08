<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
                <table id="itemsTable" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">Michelle Lux &amp; Beauty</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>item</th>
                            <th>Price (€)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/MichelleSalon/section">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="entree">
                            <tr id="{position()}">
                                <td align="center">
                                    <input name="item0" type="checkbox" />
                                </td>
                                <td>
                                    <xsl:value-of select="item" />
                                </td>
                                <td align="right">
                                    <xsl:value-of select="price" />
                                </td>
                            </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table><br/>
    </xsl:template>
</xsl:stylesheet>