require("Actor/ActorCommon")
local BaseActorProxy = require("Actor/BaseActorProxy")

local GlobalActorProxy = class("GlobalActorProxy", BaseActorProxy)
GlobalActorProxy.actorType = ActorType.GLOBAL_ACTOR
local this
local super
local uActor

function GlobalActorProxy:OnPreInit()
    this = self
    super = self.__super
end

function GlobalActorProxy:OnPostInit()
    uActor = self.uActor
end

function GlobalActorProxy:OnInit(alias)
    self.alias = alias
    uActor = self:CreateUActor(alias)
    self.uActor = uActor
    self:Register()
end

GlobalActorProxy.isDay = false
GlobalActorProxy.isNight = false
GlobalActorProxy.currWeather = 0

local function func()
    print("enter day")
    this.isDay = true
    this.isNight = false
end

local function v()
    print("enter night")
    this.isDay = false
    this.isNight = true
end

function GlobalActorProxy:CreateUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.GLOBAL_ACTOR, arg1, self.metaPath)
    local globalActor = actorUtils.CreateGlobalActor(actor)
    return globalActor
end

function GlobalActorProxy:Register()
    this:RegisterDayCallback(func)
    this:RegisterNightCallback(v)
end

function GlobalActorProxy:Destroy(arg1)
    this:UnregisterDayCallback(func)
    this:UnregisterNightCallback(v)
    uActor:Destroy(arg1)
end

function GlobalActorProxy:RegisterDayCallback(arg1)
    uActor:RegisterDayCallback(arg1)
end

function GlobalActorProxy:UnregisterDayCallback(arg1)
    uActor:UnregisterDayCallback(arg1)
end

function GlobalActorProxy:RegisterNightCallback(arg1)
    uActor:RegisterNightCallback(arg1)
end

function GlobalActorProxy:UnregisterNightCallback(arg1)
    uActor:UnregisterNightCallback(arg1)
end

function GlobalActorProxy:RegisterHourCallback(arg1)
    uActor:RegisterHourCallback(arg1)
end

function GlobalActorProxy:UnregisterHourCallback(arg1)
    uActor:UnregisterHourCallback(arg1)
end

function GlobalActorProxy:RegisterWeatherCallback(arg1) end
function GlobalActorProxy:UnregisterWeatherCallback(arg1) end

function GlobalActorProxy:ChangeDefaultWeather(arg1)
    uActor:ChangeDefaultWeahter(arg1)
end

function GlobalActorProxy:ChangeWeather(arg1)
    uActor:ChangeWeather(arg1)
end

function GlobalActorProxy:LeaveWeather()
    uActor:LeaveWeather()
end

function GlobalActorProxy:LeaveAllWeather()
    uActor:LeaveAllWeather()
end

function GlobalActorProxy:GetIsNight()
    local isNight = uActor:GetIsNight()
    this.isDay = not isNight
    this.isNight = isNight
end

function GlobalActorProxy:ChangeDay24Time(arg1, arg2)
    uActor:ChangeDay24Time(arg1, arg2)
end

function GlobalActorProxy:ChangeDay24TimeClock(arg1, arg2, arg3, arg4)
    if arg2 == nil then
        arg2 = 0
    end

    if arg3 == nil then
        arg3 = 2
    end

    uActor:ChangeDay24TimeClock(arg1, arg2, arg3, arg4)
end

function GlobalActorProxy:StartGuide(arg1)
    uActor:StartGuide(arg1)
end

function GlobalActorProxy:EndGuide(arg1)
    uActor:EndGuide(arg1)
end

function GlobalActorProxy:StopLocalAvatar()
    uActor:StopLocalAvatar()
end

function GlobalActorProxy:LoadSectorByPos(arg1, arg2)
    uActor:LoadSectorByPos(arg1, arg2)
end

function GlobalActorProxy:SetAvatarPos(arg1)
    actorUtils.SetAvatarPos(arg1)
end

function GlobalActorProxy:SetAvatarEuler(arg1)
    actorUtils.SetAvatarEuler(arg1)
end

function GlobalActorProxy:ChangeToHero()
    uActor:ChangeToHero()
end

function GlobalActorProxy:IsHeroMale()
    return uActor:IsHeroMale()
end

function GlobalActorProxy:SetHeroMoveRatio(arg1, arg2)
    if self:IsHeroMale() then
        actorUtils.SetHeroMoveRatio(arg1)
    else
        actorUtils.SetHeroMoveRatio(arg2)
    end
end

function GlobalActorProxy:ResumeHeroMoveRatio()
    actorUtils.ResumeHeroMoveRatio()
end

function GlobalActorProxy:SetAvatarMoveRatio(arg1, arg2)
    if arg1 == nil then
        arg1 = 0
    end

    if arg2 == nil then
        arg2 = 1
    end

    actorUtils.SetAvatarMoveRatio(arg1, arg2)
end

function GlobalActorProxy:ResumeAvatarMoveRatio(arg1)
    if arg1 == nil then
        arg1 = 0
    end

    actorUtils.ResumeAvatarMoveRatio(arg1)
end

function GlobalActorProxy:AvatarMoveToRoute(arg1, arg2, arg3)
    actorUtils.AvatarMoveToRoute(arg1, arg2, arg3)
end

function GlobalActorProxy:StopAvatarMove()
    actorUtils.StopAvatarMove()
end

function GlobalActorProxy:SpawnAttach(arg1, arg2)
    if arg2 == nil then
        arg2 = 0
    end

    uActor:SpawnAttach(arg1, arg2)
end

function GlobalActorProxy:UnSpawnAttach(arg1, arg2)
    if arg2 == nil then
        arg2 = 0
    end

    uActor:UnSpawnAttach(arg1, arg2)
end

function GlobalActorProxy:SpawnAttachEx(arg1, arg2, arg3)
    self.uActor:SpawnAttachEx(arg1, arg2, arg3)
end

function GlobalActorProxy:UnSpawnAttachEx(arg1, arg2, arg3)
    self.uActor:UnSpawnAttachEx(arg1, arg2, arg3)
end

function GlobalActorProxy:AvatarAttachSetVisible(arg1, arg2, arg3, arg4)
    if arg2 == nil then
        arg2 = 0
    end

    uActor:AvatarAttachSetVisible(arg1, arg2, arg3, arg4)
end

function GlobalActorProxy:AvatarAttachSetAnimatorInteger(arg1, arg2, arg3, arg4, arg5)
    if arg2 == nil then
        arg2 = 0
    end

    uActor:AvatarAttachSetAnimatorInteger(arg1, arg2, arg3, arg4, arg5)
end

function GlobalActorProxy:AvatarAttachSetAnimatorTrigger(arg1, arg2, arg3, arg4)
    if arg2 == nil then
        arg2 = 0
    end

    uActor:AvatarAttachSetAnimatorTrigger(arg1, arg2, arg3, arg4)
end

function GlobalActorProxy:SpawnAttachHeroEntity(arg1, arg2)
    if arg2 == nil then
        arg2 = 0
    end

    uActor:SpawnAttachHeroEntity(arg1, arg2)
end

function GlobalActorProxy:UnSpawnAttachHeroEntity(arg1, arg2)
    if arg2 == nil then
        arg2 = 0
    end

    uActor:UnSpawnAttachHeroEntity(arg1, arg2)
end

function GlobalActorProxy:HeroEntityAttachSetVisible(arg1, arg2, arg3)
    if arg2 == nil then
        arg2 = 0
    end

    uActor:HeroEntityAttachSetVisible(arg1, arg2, arg3)
end

function GlobalActorProxy:HeroEntityAttachSetAnimatorInteger(arg1, arg2, arg3, arg4)
    if arg2 == nil then
        arg2 = 0
    end

    uActor:HeroEntityAttachSetAnimatorInteger(arg1, arg2, arg3, arg4)
end

function GlobalActorProxy:HeroEntityAttachSetAnimatorTrigger(arg1, arg2, arg3)
    if arg2 == nil then
        arg2 = 0
    end

    uActor:HeroEntityAttachSetAnimator(arg1, arg2, arg3)
end

function GlobalActorProxy:SpawnAttachInFixedCity(arg1, arg2, arg3)
    if arg2 == nil then
        arg2 = 0
    end

    uActor:SpawnAttachInFixedCity(arg1, arg2, arg3)
end

function GlobalActorProxy:UnSpawnAttachInFixedCity(arg1, arg2, arg3)
    if arg2 == nil then
        arg2 = 0
    end

    uActor:UnSpawnAttachInFixedCity(arg1, arg2, arg3)
end

function GlobalActorProxy:SpawnAttachHeroEntityInFixedCity(arg1, arg2, arg3)
    if arg2 == nil then
        arg2 = 0
    end

    uActor:SpawnAttachHeroEntityInFixedCity(arg1, arg2, arg3)
end

function GlobalActorProxy:UnspawnAttachHeroEntityInFixedCity(arg1, arg2, arg3)
    if arg2 == nil then
        arg2 = 0
    end

    uActor:UnspawnAttachHeroEntityInFixedCity(arg1, arg2, arg3)
end

function GlobalActorProxy:SpawnAttachInFixedArea(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    self:SpawnAttachInFixedAreaEx(arg1, arg2, arg3, arg4, arg5, arg6, nil, arg7)
end

function GlobalActorProxy:SpawnAttachInFixedAreaEx(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if arg1 == nil then
        arg1 = "key_default"
    end

    if arg3 == nil then
        arg3 = 0
    end

    if arg8 == nil then
        arg8 = true
    end

    uActor:SpawnAttachInFixedArea(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
end

function GlobalActorProxy:UnSpawnAttachInFixedArea(arg1)
    if arg1 == nil then
        arg1 = "key_default"
    end

    uActor:UnSpawnAttachInFixedArea(arg1)
end

function GlobalActorProxy:FinishAllNarrator()
    uActor:FinishAllNarratorTask()
end

GlobalActorProxy.BtnTransmitData = {
    btnTransId = 0,
    btnTransSceneId = 0,
    btnTransDummyPos = nil,
    btnTransDummyEuler = nil,
    btnTransRange = 0.0,
    btnTransPriority = 0
}

function GlobalActorProxy:PlayerBackButtonOn(btnTransId, btnTransSceneId, arg3, btnTransRange, btnTransPriority, arg6, arg7)
    local v
    if btnTransPriority == nil then
        btnTransPriority = 0
    end

    local dummyPoint = sceneData:GetDummyPoint(btnTransSceneId, arg3)
    if dummyPoint == nil then
        print("dummy point " .. dummyPoint .. " invalid")
        return
    end

    local pos = dummyPoint.pos
    local rot = dummyPoint.rot
    local btnTransmitData = self.BtnTransmitData
    btnTransmitData.btnTransId = btnTransId
    btnTransmitData.btnTransSceneId = btnTransSceneId
    btnTransmitData.btnTransDummyPos = pos
    btnTransmitData.btnTransDummyEuler = rot
    btnTransmitData.btnTransRange = btnTransRange
    btnTransmitData.btnTransPriority = btnTransPriority
    local btnTransQuestId = arg6 or v
    if not arg6 then
        btnTransQuestId = 0
    end

    btnTransmitData.btnTransQuestId = btnTransQuestId
    local btnTransPointId = arg7 or btnTransQuestId
    if not arg7 then
        btnTransPointId = 0
    end

    btnTransmitData.btnTransPointId = btnTransPointId
    self.uActor:PlayerBackButtonOn(btnTransmitData)
end

function GlobalActorProxy:PlayerBackButtonOff(btnTransId)
    local btnTransmitData = self.BtnTransmitData
    btnTransmitData.btnTransId = btnTransId
    self.uActor:PlayerBackButtonOff(btnTransmitData)
end

function GlobalActorProxy:PlayerEnterDungeonWithData(pointId, dungeonId, questId, questPointCfgId, arg5, actor, finishLoadSceneCallback, enterScenePostFinishCallback)
    local tbl = {}
    if arg5 ~= nil then
        for k, v in pairs(arg5) do
            tbl[k] = v
        end
    end

    if pointId ~= nil then
        tbl.pointId = pointId
    end

    if dungeonId ~= nil then
        tbl.dungeonId = dungeonId
    end

    if questId ~= nil then
        tbl.questId = questId
    end

    if questPointCfgId ~= nil then
        tbl.questPointCfgId = questPointCfgId
    end

    tbl.actor = actor
    tbl.finishLoadSceneCallback = finishLoadSceneCallback
    tbl.enterScenePostFinishCallback = enterScenePostFinishCallback
    local dialogId = tbl.dialogId
    if dialogId ~= nil then
        if 0 < #dialogId then
            tbl.useDialog = true
            tbl.dialogIds = dialogId
        end
    else
        tbl.useDialog = false
    end

    self.uActor:PlayerEnterDungeonByRequest(tbl)
end

function GlobalActorProxy:PlayerEnterDungeonByData(arg1, arg2, actor, finishLoadSceneCallback, enterScenePostFinishCallback)
    local tbl = {}
    if arg1 ~= nil then
        for k, v in pairs(arg1) do
            tbl[k] = v
        end
    end

    if arg2 ~= nil then
        for k, v in pairs(arg2) do
            tbl[k] = v
        end
    end

    tbl.actor = actor
    tbl.finishLoadSceneCallback = finishLoadSceneCallback
    tbl.enterScenePostFinishCallback = enterScenePostFinishCallback
    local dialogId = tbl.dialogId
    if dialogId ~= nil then
        if 0 < #dialogId then
            tbl.useDialog = true
            tbl.dialogIds = dialogId
        end
    else
        tbl.useDialog = false
    end

    self.uActor:PlayerEnterDungeonByRequest(tbl)
end

function GlobalActorProxy:PlayerEnterDungeon(arg1, arg2, arg3, arg4, arg5, arg6)
    if arg6 == nil then
        arg6 = false
    end

    if arg3 ~= nil and arg3 or arg6 then
        if arg5 == nil then
            arg5 = 0
        end

        self.uActor:PlayerEnterDungeonWithQuestLoading(arg1, arg2, arg4, arg5, arg6, 0)
        return
    end

    self.uActor:PlayerEnterDungeon(arg1, arg2, 0)
end

function GlobalActorProxy:PlayerEnterDungeonPoint(arg1, arg2, arg3, arg4)
    self.uActor:PlayerEnterDungeonPoint(arg1, arg2, arg3, arg4, 0)
end

function GlobalActorProxy:PlayerEnterDungeonPointWithDialogs(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
    if arg10 == nil then
        arg10 = false
    end

    if arg6 == nil then
        arg6 = 3
    end

    self.uActor:PlayerEnterDungeonPointWithDialogs(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, 0)
end

function GlobalActorProxy:DungeonFogEffects(arg1, arg2, arg3)
    self.uActor:DungeonFogEffects(arg1, arg2, arg3)
end

function GlobalActorProxy:DisablePaimonInProfilePage(arg1)
    self.uActor:DisablePaimonInProfilePage(arg1)
end

function GlobalActorProxy:ResumePaimonInProfilePage(arg1)
    self.uActor:ResumePaimonInProfilePage(arg1)
end

function GlobalActorProxy:ResumePaimonInProfilePageAll()
    self.uActor:ResumePaimonInProfilePageAll()
end

function GlobalActorProxy:Start()
    this:GetIsNight()
end

return GlobalActorProxy
