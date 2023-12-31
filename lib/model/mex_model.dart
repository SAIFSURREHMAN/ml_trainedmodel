//////trainer
class TRAINER {
  String? name;
  String? desc;
  String? detail;
  String? contact;
  String? award;

  String? picture;
  TRAINER({
    this.name,
    this.desc,
    this.detail,
    this.contact,
    this.award,
    this.picture,
  });

  TRAINER.fromBackend(Map<String, dynamic> map) {
    name = map['name'];
    desc = map['desc'];
    detail = map['detail'];
    contact = map['contact'];
    award = map['award'];
    picture = map['picture'];
  }

  Map<String, dynamic> toBackend() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['detail'] = this.detail;
    data['contact'] = this.contact;
    data['award'] = this.award;

    data['picture'] = this.picture;
    return data;
  }
}

//////exercises
class MEX {
  String? name;
  String? desc;
  String? picture;
  MEX({
    this.name,
    this.desc,
    this.picture,
  });

  MEX.fromBackend(Map<String, dynamic> map) {
    name = map['name'];
    desc = map['desc'];
    picture = map['picture'];
  }

  Map<String, dynamic> toBackend() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['picture'] = this.picture;
    return data;
  }
}

////weight gain

class WGEX {
  String? name;
  String? desc;
  String? picture;

  //1st exx
  String? exname1;
  String? mintime1;
  String? maxtime1;
  String? reps1;
  String? set1;
  String? ins11;
  String? ins12;
  String? ins13;
  String? ins14;
  String? picture1;
//2nd ex
  String? exname2;
  String? mintime2;
  String? maxtime2;
  String? reps2;
  String? set2;
  String? ins21;
  String? ins22;
  String? ins23;
  String? ins24;
  String? picture2;

  WGEX(
      {this.name,
      this.desc,
      this.picture,

      ////ex 1
      this.exname1,
      this.mintime1,
      this.maxtime1,
      this.reps1,
      this.set1,
      this.ins11,
      this.ins12,
      this.ins13,
      this.ins14,
      this.picture1,

      ///ex 2
      this.exname2,
      this.mintime2,
      this.maxtime2,
      this.reps2,
      this.set2,
      this.ins21,
      this.ins22,
      this.ins23,
      this.ins24,
      this.picture2});

  WGEX.fromBackend(Map<String, dynamic> map) {
    name = map['name'];
    desc = map['desc'];
    picture = map['picture'];

    /////ex 1
    exname1 = map['exname1'];
    mintime1 = map['mintime1'];
    maxtime1 = map['maxtime1'];
    reps1 = map['reps1'];
    set1 = map['set1'];
    ins11 = map['ins11'];
    ins12 = map['ins12'];
    ins13 = map['ins13'];
    ins14 = map['ins14'];
    picture1 = map['picture1'];
    ////////ex 2nd
    exname2 = map['exname2'];
    mintime2 = map['mintime2'];
    maxtime2 = map['maxtime2'];
    reps2 = map['reps2'];
    set2 = map['set2'];
    ins21 = map['ins21'];
    ins22 = map['ins22'];
    ins23 = map['ins23'];
    ins24 = map['ins24'];
    picture2 = map['picture2'];
  }

  Map<String, dynamic> toBackend() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;

    data['desc'] = this.desc;
    data['picture'] = this.picture;

    //////ex 1
    data['exname1'] = this.exname1;
    data['mintime1'] = this.mintime1;
    data['maxtime1'] = this.maxtime1;
    data['reps1'] = this.reps1;
    data['set1'] = this.set1;
    data['ins11'] = this.ins11;
    data['ins12'] = this.ins12;
    data['ins13'] = this.ins13;
    data['ins14'] = this.ins14;
    data['picture1'] = this.picture1;
    //////ex 2
    data['exname2'] = this.exname2;
    data['mintime2'] = this.mintime2;
    data['maxtime2'] = this.maxtime2;
    data['reps2'] = this.reps2;
    data['set2'] = this.set2;
    data['ins21'] = this.ins21;
    data['ins22'] = this.ins22;
    data['ins23'] = this.ins23;
    data['ins24'] = this.ins24;
    data['picture2'] = this.picture2;
    return data;
  }
}

///Weight loss

class WLEX {
  String? name;
  String? desc;
  String? picture;
  //1st exx
  String? exname1;
  String? mintime1;
  String? maxtime1;
  String? reps1;
  String? set1;
  String? ins11;
  String? ins12;
  String? ins13;
  String? ins14;
  String? picture1;
//2nd ex
  String? exname2;
  String? mintime2;
  String? maxtime2;
  String? reps2;
  String? set2;
  String? ins21;
  String? ins22;
  String? ins23;
  String? ins24;
  String? picture2;

  WLEX(
      {this.name,
      this.desc,
      this.picture,
      ////ex 1
      this.exname1,
      this.mintime1,
      this.maxtime1,
      this.reps1,
      this.set1,
      this.ins11,
      this.ins12,
      this.ins13,
      this.ins14,
      this.picture1,

      ///ex 2
      this.exname2,
      this.mintime2,
      this.maxtime2,
      this.reps2,
      this.set2,
      this.ins21,
      this.ins22,
      this.ins23,
      this.ins24,
      this.picture2});

  WLEX.fromBackend(Map<String, dynamic> map) {
    name = map['name'];
    desc = map['desc'];
    picture = map['picture'];
    /////ex 1
    exname1 = map['exname1'];
    mintime1 = map['mintime1'];
    maxtime1 = map['maxtime1'];
    reps1 = map['reps1'];
    set1 = map['set1'];
    ins11 = map['ins11'];
    ins12 = map['ins12'];
    ins13 = map['ins13'];
    ins14 = map['ins14'];
    picture1 = map['picture1'];
    ////////ex 2nd
    exname2 = map['exname2'];
    mintime2 = map['mintime2'];
    maxtime2 = map['maxtime2'];
    reps2 = map['reps2'];
    set2 = map['set2'];
    ins21 = map['ins21'];
    ins22 = map['ins22'];
    ins23 = map['ins23'];
    ins24 = map['ins24'];
    picture2 = map['picture2'];
  }

  Map<String, dynamic> toBackend() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['picture'] = this.picture;
    //////ex 1
    data['exname1'] = this.exname1;
    data['mintime1'] = this.mintime1;
    data['maxtime1'] = this.maxtime1;
    data['reps1'] = this.reps1;
    data['set1'] = this.set1;
    data['ins11'] = this.ins11;
    data['ins12'] = this.ins12;
    data['ins13'] = this.ins13;
    data['ins14'] = this.ins14;
    data['picture1'] = this.picture1;
    //////ex 2
    data['exname2'] = this.exname2;
    data['mintime2'] = this.mintime2;
    data['maxtime2'] = this.maxtime2;
    data['reps2'] = this.reps2;
    data['set2'] = this.set2;
    data['ins21'] = this.ins21;
    data['ins22'] = this.ins22;
    data['ins23'] = this.ins23;
    data['ins24'] = this.ins24;
    data['picture2'] = this.picture2;
    return data;
  }
}
///////Yoga

class YGEX {
  String? name;
  String? desc;
  String? picture;
  //1st exx
  String? exname1;
  String? mintime1;
  String? maxtime1;
  String? reps1;
  String? set1;
  String? ins11;
  String? ins12;
  String? ins13;
  String? ins14;
  String? picture1;
//2nd ex
  String? exname2;
  String? mintime2;
  String? maxtime2;
  String? reps2;
  String? set2;
  String? ins21;
  String? ins22;
  String? ins23;
  String? ins24;
  String? picture2;

  YGEX(
      {this.name,
      this.desc,
      this.picture,
      ////ex 1
      this.exname1,
      this.mintime1,
      this.maxtime1,
      this.reps1,
      this.set1,
      this.ins11,
      this.ins12,
      this.ins13,
      this.ins14,
      this.picture1,

      ///ex 2
      this.exname2,
      this.mintime2,
      this.maxtime2,
      this.reps2,
      this.set2,
      this.ins21,
      this.ins22,
      this.ins23,
      this.ins24,
      this.picture2});

  YGEX.fromBackend(Map<String, dynamic> map) {
    name = map['name'];
    desc = map['desc'];
    picture = map['picture'];
    /////ex 1
    exname1 = map['exname1'];
    mintime1 = map['mintime1'];
    maxtime1 = map['maxtime1'];
    reps1 = map['reps1'];
    set1 = map['set1'];
    ins11 = map['ins11'];
    ins12 = map['ins12'];
    ins13 = map['ins13'];
    ins14 = map['ins14'];
    picture1 = map['picture1'];
    ////////ex 2nd
    exname2 = map['exname2'];
    mintime2 = map['mintime2'];
    maxtime2 = map['maxtime2'];
    reps2 = map['reps2'];
    set2 = map['set2'];
    ins21 = map['ins21'];
    ins22 = map['ins22'];
    ins23 = map['ins23'];
    ins24 = map['ins24'];
    picture2 = map['picture2'];
  }

  Map<String, dynamic> toBackend() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['picture'] = this.picture;
    //////ex 1
    data['exname1'] = this.exname1;
    data['mintime1'] = this.mintime1;
    data['maxtime1'] = this.maxtime1;
    data['reps1'] = this.reps1;
    data['set1'] = this.set1;
    data['ins11'] = this.ins11;
    data['ins12'] = this.ins12;
    data['ins13'] = this.ins13;
    data['ins14'] = this.ins14;
    data['picture1'] = this.picture1;
    //////ex 2
    data['exname2'] = this.exname2;
    data['mintime2'] = this.mintime2;
    data['maxtime2'] = this.maxtime2;
    data['reps2'] = this.reps2;
    data['set2'] = this.set2;
    data['ins21'] = this.ins21;
    data['ins22'] = this.ins22;
    data['ins23'] = this.ins23;
    data['ins24'] = this.ins24;
    data['picture2'] = this.picture2;
    return data;
  }
}

///POWER lifting
class PLEX {
  String? name;
  String? desc;
  String? picture;
//1st exx
  String? exname1;
  String? mintime1;
  String? maxtime1;
  String? reps1;
  String? set1;
  String? ins11;
  String? ins12;
  String? ins13;
  String? ins14;
  String? picture1;
//2nd ex
  String? exname2;
  String? mintime2;
  String? maxtime2;
  String? reps2;
  String? set2;
  String? ins21;
  String? ins22;
  String? ins23;
  String? ins24;
  String? picture2;

  PLEX(
      {this.name,
      this.desc,
      this.picture,
      ////ex 1
      this.exname1,
      this.mintime1,
      this.maxtime1,
      this.reps1,
      this.set1,
      this.ins11,
      this.ins12,
      this.ins13,
      this.ins14,
      this.picture1,

      ///ex 2
      this.exname2,
      this.mintime2,
      this.maxtime2,
      this.reps2,
      this.set2,
      this.ins21,
      this.ins22,
      this.ins23,
      this.ins24,
      this.picture2});

  PLEX.fromBackend(Map<String, dynamic> map) {
    name = map['name'];
    desc = map['desc'];
    picture = map['picture'];
    /////ex 1
    exname1 = map['exname1'];
    mintime1 = map['mintime1'];
    maxtime1 = map['maxtime1'];
    reps1 = map['reps1'];
    set1 = map['set1'];
    ins11 = map['ins11'];
    ins12 = map['ins12'];
    ins13 = map['ins13'];
    ins14 = map['ins14'];
    picture1 = map['picture1'];
    ////////ex 2nd
    exname2 = map['exname2'];
    mintime2 = map['mintime2'];
    maxtime2 = map['maxtime2'];
    reps2 = map['reps2'];
    set2 = map['set2'];
    ins21 = map['ins21'];
    ins22 = map['ins22'];
    ins23 = map['ins23'];
    ins24 = map['ins24'];
    picture2 = map['picture2'];
  }

  Map<String, dynamic> toBackend() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['picture'] = this.picture;
    //////ex 1
    data['exname1'] = this.exname1;
    data['mintime1'] = this.mintime1;
    data['maxtime1'] = this.maxtime1;
    data['reps1'] = this.reps1;
    data['set1'] = this.set1;
    data['ins11'] = this.ins11;
    data['ins12'] = this.ins12;
    data['ins13'] = this.ins13;
    data['ins14'] = this.ins14;
    data['picture1'] = this.picture1;
    //////ex 2
    data['exname2'] = this.exname2;
    data['mintime2'] = this.mintime2;
    data['maxtime2'] = this.maxtime2;
    data['reps2'] = this.reps2;
    data['set2'] = this.set2;
    data['ins21'] = this.ins21;
    data['ins22'] = this.ins22;
    data['ins23'] = this.ins23;
    data['ins24'] = this.ins24;
    data['picture2'] = this.picture2;

    return data;
  }
}
