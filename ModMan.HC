U8 *iwad,*pwad;

if(iwad=FramePtr("USE_IWAD")) {
  if(!FileFind(iwad)) {
    PopUpOk(MStrPrint("Can't find IWAD \"%Q\"\n",iwad));
    Exit;
  }
  LoadWad(iwad);
} else if(FileFind("DOOM2.WAD")) {
  LoadWad(iwad="DOOM2.WAD");
  FramePtrAdd("DOOM2",1);
} else if(FileFind("DOOM.WAD"))
{
  LoadWad(iwad="DOOM.WAD");
} else if(FileFind("doom1.wad"))
{
 LoadWad(iwad="doom1.wad");
}
else if(FileFind("freedoom1.wad"))
{
 LoadWad(iwad="freedoom1.wad"); 
}

//if(FileFind("TOOM.wad"))
// LoadWad("TOOM.wad");
/*if(FileFind("TRINITY.WAD")) {
  LoadWad("TRINITY.WAD");
}*/
if(pwad=FramePtr("USE_PWAD")) {
  if(!FileFind(pwad)) {
    PopUpOk(MStrPrint("Can't find PWAD \"%Q\"\n",pwad));
    Exit;
  }
}
