local NpcConfigCommon = {BubbleTime = 5}
local bubbleInterval = {}
local n = 10
bubbleInterval[1] = 5
bubbleInterval[2] = n
NpcConfigCommon.BubbleInterval = bubbleInterval
NpcConfigCommon.GeneralPattern = {Stand = 1, Patrol = 2, Sit = 3, Hide = 4}
NpcConfigCommon.ActorMoveType = {Walk = 0, FloatingWalk = 1, Run = 2}

NpcConfigCommon.ActionPattern = {
    DAY_STAND = 1,
    DAY_PATROL = 2,
    DAY_SIT = 3,
    NIGHT_STAND = 4,
    NIGHT_PATROL = 5,
    NIGHT_SIT = 6,
    INSOMNIA_STAND = 7,
    INSOMNIA_PATROL = 8,
    INSOMNIA_SIT = 9
}

NpcConfigCommon.ActionType = {
    WalkTo = 1,
    WalkToByRoute = 2,
    RunTo = 3,
    RunToByRoute = 4,
    Standby = 5,
    Bodylang = 6,
    Emotion = 7,
    Bubble = 8,
    Speech = 9,
    LuaAction = 10
}

NpcConfigCommon.TriggerType = {StartDay = 1, StartNight = 2, StartRain = 3, Alert = 4}
NpcConfigCommon.VoicePattern = {SOLO = 1, TALK = 2}
NpcConfigCommon.TalkMode = {BUBBLE = 1, VOICE = 2, BOTH = 3, NO = 4}
NpcConfigCommon.DailyCondition = {AllDay = 0, Day = 1, Night = 2}
NpcConfigCommon.CompareOperation = {Equal = 0, Greater = 1, Less = 2}
NpcConfigCommon.QuestState = {None = 0, UnStarted = 1, UnFinished = 2, Finished = 3, Failed = 4}

NpcConfigCommon.ActionPointType = {
    InvalidPoint = 0,
    SleepPoint = 1,
    SitPoint = 2,
    LandingPoint = 3,
    ExtractionPoint = 4,
    DvalinSpecialPoint = 5,
    LupiColosseumPoint = 6,
    DancingPoint = 7,
    MakingPoint = 8,
    BuildingPoint = 9,
    SearchPoint = 10,
    SupervisePoint = 11,
    ThreatPoint = 12,
    PreachPoint = 13,
    SurroundPoint = 14,
    TrainingPoint = 15,
    MoleHolePoint = 16,
    AureaePoint = 17,
    StandbyPoint = 18,
    SitOnChairPoint = 19,
    PrayPoint = 20,
    GuardPoint = 21,
    ForgePoint = 22,
    FishingPoint = 23,
    KidPlayPoint = 24,
    DrinkingPoint = 25,
    MultiTalkPoint = 26,
    MultiTalkPrimPoint = 27,
    ShopOwnerPoint = 28,
    FeedingPoint = 29,
    WateringPoint = 30,
    SweepingPoint = 31,
    ShelterPoint = 32,
    HidingPoint = 33,
    OceanidMovePoint = 34,
    AfraidPoint = 35,
    InvestigatePoint = 36,
    OperationPoint = 37,
    ArrangePoint = 38,
    SplashPoint = 39,
    RepairPoint = 40,
    PerformingPoint = 41,
    CatFeedPoint = 42,
    DogFeedPoint = 43
}

NpcConfigCommon.FocusToPlayerType = {Default = 0, Always = 1, OnlyOnce = 2, Ignore = 3}
NpcConfigCommon.ReactEnableType = {Default = 0, React = 1, Ignore = 2}
NpcConfigCommon.ReactEventType = {None = 0, Reminder = 1, ReactionNotify = 2}
NpcConfigCommon.ReactDataType = {SimpleSerial = 0, SimpleParallel = 1, StoryAction = 2}
return NpcConfigCommon
