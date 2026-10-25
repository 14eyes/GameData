require("Actor/ActorCommon")
local EntityActorProxy = require("Actor/EntityActorProxy")

local NpcActorProxy = class("NpcActorProxy", EntityActorProxy)
NpcActorProxy.actorType = ActorType.NPC_ACTOR
local super

function NpcActorProxy:OnPreInit()
    super = self.__super
    super:OnPreInit()
end

function NpcActorProxy:GetCustomFreeStyleList() end

function NpcActorProxy:CallOnStart(arg1)
    actorUtils.DoStartCall(self.alias, arg1)
    if self.uActor ~= nil then
        self.uActor:StartCall(arg1)
    end
end

function NpcActorProxy:CreateNpcUActor(arg1)
    local actor = actorUtils.CreateActor(self, ActorType.NPC_ACTOR, arg1, self.metaPath)
    if self.bornPos == nil then
        self.bornPos = M.Pos(0, 0, 0)
    end

    if self.bornDir == nil then
        self.bornDir = M.Pos(0, 0, 0)
    end

    if self.bornShoesOffset == nil then
        self.bornShoesOffset = 0
    end

    local npcActor = actorUtils.CreateNpcActor(self.configID, self.bornPos, self.bornDir, self.bornShoesOffset, actor, self.bornSceneID, self.bornRoomID, self.bornQuestID, self.isLocal, self.isAutoStart, self.extMetaInfo)
    if nil ~= npcActor then
        local customFreeStyleList = self:GetCustomFreeStyleList()
        if nil ~= customFreeStyleList then
            npcActor:AddCustomLoadFreeStyleList(customFreeStyleList)
        end
    end

    return npcActor
end

function NpcActorProxy:CreateUActor(arg1)
    return self:CreateNpcUActor(arg1)
end

function NpcActorProxy:MarkDitherShow(arg1)
    self.uActor:MarkDitherShow(arg1)
end

function NpcActorProxy:DitherToShowWhenAppear(arg1)
    self.uActor:DitherToShowWhenAppear(arg1)
end

function NpcActorProxy:ResetAsNoDaily()
    self.uActor:ResetAsNoDaily()
end

function NpcActorProxy:AddPriorityInter(arg1, arg2)
    self.uActor:AddPriorityInter(arg1, arg2)
end

function NpcActorProxy:ClearPriorityInter(arg1)
    self.uActor:ClearPriorityInter(arg1)
end

function NpcActorProxy:CheckNpcTalk()
    self.uActor:CheckNpcTalk()
end

function NpcActorProxy:CallOnCollisionEnter(arg1)
    self.uActor:CallOnCollisionEnter(arg1)
end

function NpcActorProxy:ClearOnCollisionEnter(arg1)
    self.uActor:ClearOnCollisionEnter(arg1)
end

function NpcActorProxy:GetNpcConfigId()
    return self.uActor:GetNpcConfigId()
end

function NpcActorProxy:GetNpcAlias()
    return self.uActor:GetNpcAlias()
end

function NpcActorProxy:EnableHeadCtrl(arg1)
    self.uActor:EnableHeadCtrl(arg1)
end

function NpcActorProxy:LookAt(arg1, arg2)
    if arg2 == nil then
        arg2 = false
    end

    self.uActor:LookAt(arg1, arg2)
end

function NpcActorProxy:ClearLookAt()
    self.uActor:ClearLookAt()
end

function NpcActorProxy:LookAtTarget(arg1, arg2, arg3)
    if arg3 == nil then
        arg3 = false
    end

    self.uActor:LookAtTarget(arg1, arg2, arg3)
end

function NpcActorProxy:ClearLookAtTarget()
    self.uActor:ClearLookAtTarget()
end

function NpcActorProxy:DisableInteeHeadCtrl(arg1)
    self.uActor:DisableInteeHeadCtrl(arg1)
end

function NpcActorProxy:AddGeneralMark(generalMark)
    self.uActor:AddGeneralMark(generalMark)
end

function NpcActorProxy:ClearGeneralMark()
    self.uActor:ClearGeneralMark()
end

function NpcActorProxy:SetPlayerNpcNoneEnergyType()
    self.uActor:SetPlayerNpcNoneEnergyType()
end

function NpcActorProxy:SetPlayerNpcEnergy()
    self.uActor:SetPlayerNpcHeroEnergyType()
end

function NpcActorProxy:SetPlayerNpcEnergyType(playerNpcHeroEnergy)
    self.uActor:SetPlayerNpcHeroEnergy(playerNpcHeroEnergy)
end

function NpcActorProxy:SwitchPhantom(arg1, arg2, arg3)
    self.uActor:SwitchPhantom(arg1, arg2, arg3, true)
end

function NpcActorProxy:ChangeNpcMat(arg1, arg2, arg3)
    self.uActor:ChangeNpcMat(arg1, arg2, arg3)
end

function NpcActorProxy:ResumeOriginMat(arg1, arg2)
    self.uActor:ResumeOriginMat(arg1, arg2)
end

function NpcActorProxy:ChangeNpcAvatarPendantVisual(arg1)
    self.uActor:ChangeNpcAvatarPendantVisual(arg1)
end

function NpcActorProxy:CallOnNpcSit(arg1)
    self.uActor:CallOnNpcSit(arg1)
end

function NpcActorProxy:UncallOnNpcSit(arg1)
    self.uActor:UncallOnNpcSit(arg1)
end

function NpcActorProxy:CallOnNpcStand(arg1)
    self.uActor:CallOnNpcStand(arg1)
end

function NpcActorProxy:UncallOnNpcStand(arg1)
    self.uActor:UncallOnNpcStand(arg1)
end

function NpcActorProxy:ShowNpcWithLevelTagId(arg1, arg2)
    if arg2 == nil then
        arg2 = true
    end

    self.uActor:ShowNpcWithLevelTagId(arg1, arg2)
end

function NpcActorProxy:CancelShowNpcWithLevelTagId()
    self.uActor:CancelShowNpcWithLevelTagId()
end

function NpcActorProxy:OnDestroy() end

function NpcActorProxy:Destroy(arg1, arg2)
    if arg2 == nil then
        arg2 = false
    end

    self:OnDestroy()
    self:ClearCoroutine()
    if self.uActor ~= nil then
        if arg2 == false then
            self.uActor:ClearCmd()
        end

        self.uActor:Destroy(arg1)
    end

    actorMgr:ClearActor(self.alias)
    self.uActor = nil
    self.actorData = nil
end

function NpcActorProxy:ClearActor()
    self.uActor:ClearActor()
    self.CallOnStartCacheInternal = nil
    self.targetPos = nil
    self.routePoints = nil
    self.BeFollowLen = 10
    self.BeFollowFailedLen = 20
    self.BeFollowState = BeFollowState.ING
    self.BeFollowFailed = nil
    self.CurrDialogList = nil
    self.CurrDialogIndex = 1
    self.CurrDuration = 0
    self.CurrDurationCnt = 0
    self.NarratorPauseLen = 10
    self.NarratorResumeLen = 5
    self.NarratorState = NarratorState.ING
end

function NpcActorProxy:GetQuestToken()
    return self.uActor:GetMetaQuestToken()
end

return NpcActorProxy
