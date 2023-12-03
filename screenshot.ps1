Add-Type -AssemblyName System.Windows.Forms
Add-type -AssemblyName System.Drawing
$screen = [System.Windows.Forms.Screen]::PrimaryScreen
$width = [int]($screen.Bounds.Width * 2)
$height = [int]($screen.Bounds.Height * 2)
$bitmap = New-Object System.Drawing.Bitmap ($width, $height)
$graphic = [System.Drawing.Graphics]::FromImage($bitmap)
$graphic.CopyFromScreen($screen.WorkingArea.X, $screen.WorkingArea.Y, 0, 0, $bitmap.Size)
$bitmap.Save('./shot.jpg')