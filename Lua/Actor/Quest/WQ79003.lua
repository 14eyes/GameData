require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79003 = class("Quest79003", QuestActorProxy)
Quest79003.defaultAlias = "Quest79003"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest79003:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest79003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7900314"] = self.OnSubStart7900314,
        ["7900301"] = self.OnSubStart7900301,
        ["7900302"] = self.OnSubStart7900302,
        ["7900310"] = self.OnSubStart7900310,
        ["7900311"] = self.OnSubStart7900311,
        ["7900303"] = self.OnSubStart7900303,
        ["7900312"] = self.OnSubStart7900312,
        ["7900304"] = self.OnSubStart7900304,
        ["7900313"] = self.OnSubStart7900313,
        ["7900305"] = self.OnSubStart7900305,
        ["7900309"] = self.OnSubStart7900309,
        ["7900307"] = self.OnSubStart7900307,
        ["7900315"] = self.OnSubStart7900315,
        ["7900316"] = self.OnSubStart7900316,
        ["7900317"] = self.OnSubStart7900317,
        ["7900318"] = self.OnSubStart7900318,
        ["7900306"] = self.OnSubStart7900306,
        ["7900319"] = self.OnSubStart7900319,
        ["7900308"] = self.OnSubStart7900308
    }
end

function Quest79003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7900314"] = self.OnSubFinish7900314,
        ["7900301"] = self.OnSubFinish7900301,
        ["7900302"] = self.OnSubFinish7900302,
        ["7900310"] = self.OnSubFinish7900310,
        ["7900311"] = self.OnSubFinish7900311,
        ["7900303"] = self.OnSubFinish7900303,
        ["7900312"] = self.OnSubFinish7900312,
        ["7900304"] = self.OnSubFinish7900304,
        ["7900313"] = self.OnSubFinish7900313,
        ["7900305"] = self.OnSubFinish7900305,
        ["7900309"] = self.OnSubFinish7900309,
        ["7900307"] = self.OnSubFinish7900307,
        ["7900315"] = self.OnSubFinish7900315,
        ["7900316"] = self.OnSubFinish7900316,
        ["7900317"] = self.OnSubFinish7900317,
        ["7900318"] = self.OnSubFinish7900318,
        ["7900306"] = self.OnSubFinish7900306,
        ["7900319"] = self.OnSubFinish7900319,
        ["7900308"] = self.OnSubFinish7900308
    }
end

function Quest79003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7900314"] = self.OnSubFailed7900314,
        ["7900301"] = self.OnSubFailed7900301,
        ["7900302"] = self.OnSubFailed7900302,
        ["7900310"] = self.OnSubFailed7900310,
        ["7900311"] = self.OnSubFailed7900311,
        ["7900303"] = self.OnSubFailed7900303,
        ["7900312"] = self.OnSubFailed7900312,
        ["7900304"] = self.OnSubFailed7900304,
        ["7900313"] = self.OnSubFailed7900313,
        ["7900305"] = self.OnSubFailed7900305,
        ["7900309"] = self.OnSubFailed7900309,
        ["7900307"] = self.OnSubFailed7900307,
        ["7900315"] = self.OnSubFailed7900315,
        ["7900316"] = self.OnSubFailed7900316,
        ["7900317"] = self.OnSubFailed7900317,
        ["7900318"] = self.OnSubFailed7900318,
        ["7900306"] = self.OnSubFailed7900306,
        ["7900319"] = self.OnSubFailed7900319,
        ["7900308"] = self.OnSubFailed7900308
    }
end

function Quest79003:Start()
    print("Start")
end

function Quest79003:OnDestroy()
    print("OnDestroy")
end

function Quest79003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79003:OnMainCanceled(arg1)
    print("OnMainCanceled")
    actorMgr:GetActor(datas.Q7900310Trigger_.alias)
    actorMgr:GetActor(datas.Q7900311Trigger_.alias)
    actorMgr:GetActor(datas.Q7900312Trigger_.alias)
    actorMgr:GetActor(datas.Q7900313Trigger_.alias)
    self:RemoveClientTrigger7900310()
    self:RemoveClientTrigger7900311()
    self:RemoveClientTrigger7900312()
    self:RemoveClientTrigger7900313()
end

function Quest79003:ShowBlackScreenWhenWaiting()
    print("ShowBlackScreenWhenWaiting")
    self:ShowBlackScreen(0.2, 1, 0.2, self.Finish7900306, nil, nil, "")
end

function Quest79003:Finish7900306()
    print("Finish7900306")
    self:FinishQuestID(false, 7900306)
end

function Quest79003:PaimonDisappear()
    local questNpcActor = self:GetQuestNpcActor(npcs.PaimonData.alias)
    if nil ~= questNpcActor then
        if questNpcActor.isDummyActor ~= true then
            goto lbl_16
        end
    end

    self:DestroyQuestNpcActorByAlias(npcs.PaimonData.alias, false)
    goto lbl_19
    ::lbl_16::
    questNpcActor:DestroyWithDisappear(false)
    ::lbl_19::
end

function Quest79003:RemoveClientTrigger7900310()
    local actor = actorMgr:GetActor(datas.Q7900310Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest79003:RemoveClientTrigger7900311()
    local actor = actorMgr:GetActor(datas.Q7900311Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest79003:RemoveClientTrigger7900312()
    local actor = actorMgr:GetActor(datas.Q7900312Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest79003:RemoveClientTrigger7900313()
    local actor = actorMgr:GetActor(datas.Q7900313Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest79003:CreatePaimonWithRelativePos7900310()
    local avatarPos = actorUtils.GetAvatarPos()
    print("playerpos," .. avatarPos.x .. "," .. avatarPos.y .. "," .. avatarPos.z)
    local n = actorUtils.GetAvatarForward() * -1
    local v = 1
    print(n.x .. "," .. n.y .. "," .. n.z)
    avatarPos.x = avatarPos.x + n.x * v
    avatarPos.z = avatarPos.z + n.z * v
    print("paimon pos," .. avatarPos.x .. "," .. avatarPos.y .. "," .. avatarPos.z)
    local v2 = n
    v2.x = v2.x * -1
    v2.z = v2.z * -1
    self:CreateQuestNpcByIdWithPos(7900310, 1005, 0, avatarPos, M.Dir2Euler(v2))
end

function Quest79003:CreatePaimonWithRelativePos7900311()
    local avatarPos = actorUtils.GetAvatarPos()
    print("playerpos," .. avatarPos.x .. "," .. avatarPos.y .. "," .. avatarPos.z)
    local n = actorUtils.GetAvatarForward() * -1
    local v = 1
    print(n.x .. "," .. n.y .. "," .. n.z)
    avatarPos.x = avatarPos.x + n.x * v
    avatarPos.z = avatarPos.z + n.z * v
    print("paimon pos," .. avatarPos.x .. "," .. avatarPos.y .. "," .. avatarPos.z)
    local v2 = n
    v2.x = v2.x * -1
    v2.z = v2.z * -1
    self:CreateQuestNpcByIdWithPos(7900311, 1005, 0, avatarPos, M.Dir2Euler(v2))
end

function Quest79003:CreatePaimonWithRelativePos7900312()
    local avatarPos = actorUtils.GetAvatarPos()
    print("playerpos," .. avatarPos.x .. "," .. avatarPos.y .. "," .. avatarPos.z)
    local n = actorUtils.GetAvatarForward() * -1
    local v = 1
    print(n.x .. "," .. n.y .. "," .. n.z)
    avatarPos.x = avatarPos.x + n.x * v
    avatarPos.z = avatarPos.z + n.z * v
    print("paimon pos," .. avatarPos.x .. "," .. avatarPos.y .. "," .. avatarPos.z)
    local v2 = n
    v2.x = v2.x * -1
    v2.z = v2.z * -1
    self:CreateQuestNpcByIdWithPos(7900312, 1005, 0, avatarPos, M.Dir2Euler(v2))
end

function Quest79003:CreatePaimonWithRelativePos7900313()
    local avatarPos = actorUtils.GetAvatarPos()
    print("playerpos," .. avatarPos.x .. "," .. avatarPos.y .. "," .. avatarPos.z)
    local n = actorUtils.GetAvatarForward() * -1
    local v = 1
    print(n.x .. "," .. n.y .. "," .. n.z)
    avatarPos.x = avatarPos.x + n.x * v
    avatarPos.z = avatarPos.z + n.z * v
    print("paimon pos," .. avatarPos.x .. "," .. avatarPos.y .. "," .. avatarPos.z)
    local v2 = n
    v2.x = v2.x * -1
    v2.z = v2.z * -1
    self:CreateQuestNpcByIdWithPos(7900313, 1005, 0, avatarPos, M.Dir2Euler(v2))
end

function Quest79003:OnSubStart7900314(arg1)
    print("OnSubStart7900314")
    self:FinishQuestID(false, 7900314)
end

function Quest79003:OnSubFinish7900314(arg1)
    print("OnSubFinish7900314")
end

function Quest79003:OnSubFailed7900314(arg1)
    print("OnSubFailed7900314")
end

function Quest79003:OnSubStart7900301(arg1)
    print("OnSubStart7900301")
end

function Quest79003:OnSubFinish7900301(arg1)
    print("OnSubFinish7900301")
    self:GetQuestVar(79003, 1)
    self:SetQuestVarByMainId(1, 2)
end

function Quest79003:OnSubFailed7900301(arg1)
    print("OnSubFailed7900301")
end

function Quest79003:OnSubStart7900302(arg1)
    print("OnSubStart7900302")
end

function Quest79003:OnSubFinish7900302(arg1)
    print("OnSubFinish7900302")
    self:GetQuestVar(79003, 1)
    self:SetQuestVarByMainId(1, 2)
end

function Quest79003:OnSubFailed7900302(arg1)
    print("OnSubFailed7900302")
end

function Quest79003:OnSubStart7900310(arg1)
    print("OnSubStart7900310")
    actorMgr:CreateActorWithPos(datas.Q7900310Trigger_.alias, datas.Q7900310Trigger_.script, datas.Q7900310Trigger_.id, 0, datas.Q7900310Trigger_.point.pos, datas.Q7900310Trigger_.point.rot, true, false, 4)
    self:CreatePaimonWithRelativePos7900310()
end

function Quest79003:OnSubFinish7900310(arg1)
    print("OnSubFinish7900310")
    self:ActionSafeCall(self.PaimonDisappear)
    actorMgr:GetActor(datas.Q7900310Trigger_.alias)
    self:RemoveClientTrigger7900310()
end

function Quest79003:OnSubFailed7900310(arg1)
    print("OnSubFailed7900310")
end

function Quest79003:OnSubStart7900311(arg1)
    print("OnSubStart7900311")
    actorMgr:CreateActorWithPos(datas.Q7900311Trigger_.alias, datas.Q7900311Trigger_.script, datas.Q7900311Trigger_.id, 0, datas.Q7900311Trigger_.point.pos, datas.Q7900311Trigger_.point.rot, true, false, 4)
    self:CreatePaimonWithRelativePos7900311()
end

function Quest79003:OnSubFinish7900311(arg1)
    print("OnSubFinish7900311")
    self:ActionSafeCall(self.PaimonDisappear)
    actorMgr:GetActor(datas.Q7900311Trigger_.alias)
    self:RemoveClientTrigger7900311()
end

function Quest79003:OnSubFailed7900311(arg1)
    print("OnSubFailed7900311")
end

function Quest79003:OnSubStart7900303(arg1)
    print("OnSubStart7900303")
end

function Quest79003:OnSubFinish7900303(arg1)
    print("OnSubFinish7900303")
end

function Quest79003:OnSubFailed7900303(arg1)
    print("OnSubFailed7900303")
end

function Quest79003:OnSubStart7900312(arg1)
    print("OnSubStart7900312")
    actorMgr:CreateActorWithPos(datas.Q7900312Trigger_.alias, datas.Q7900312Trigger_.script, datas.Q7900312Trigger_.id, 0, datas.Q7900312Trigger_.point.pos, datas.Q7900312Trigger_.point.rot, true, false, 4)
    self:CreatePaimonWithRelativePos7900312()
end

function Quest79003:OnSubFinish7900312(arg1)
    print("OnSubFinish7900312")
    self:ActionSafeCall(self.PaimonDisappear)
    actorMgr:GetActor(datas.Q7900312Trigger_.alias)
    self:RemoveClientTrigger7900312()
end

function Quest79003:OnSubFailed7900312(arg1)
    print("OnSubFailed7900312")
end

function Quest79003:OnSubStart7900304(arg1)
    print("OnSubStart7900304")
end

function Quest79003:OnSubFinish7900304(arg1)
    print("OnSubFinish7900304")
end

function Quest79003:OnSubFailed7900304(arg1)
    print("OnSubFailed7900304")
end

function Quest79003:OnSubStart7900313(arg1)
    print("OnSubStart7900313")
    actorMgr:CreateActorWithPos(datas.Q7900313Trigger_.alias, datas.Q7900313Trigger_.script, datas.Q7900313Trigger_.id, 0, datas.Q7900313Trigger_.point.pos, datas.Q7900313Trigger_.point.rot, true, false, 4)
    self:CreatePaimonWithRelativePos7900313()
end

function Quest79003:OnSubFinish7900313(arg1)
    print("OnSubFinish7900313")
    self:ActionSafeCall(self.PaimonDisappear)
    actorMgr:GetActor(datas.Q7900313Trigger_.alias)
    self:RemoveClientTrigger7900313()
end

function Quest79003:OnSubFailed7900313(arg1)
    print("OnSubFailed7900313")
end

function Quest79003:OnSubStart7900305(arg1)
    print("OnSubStart7900305")
end

function Quest79003:OnSubFinish7900305(arg1)
    print("OnSubFinish7900305")
end

function Quest79003:OnSubFailed7900305(arg1)
    print("OnSubFailed7900305")
end

function Quest79003:OnSubStart7900309(arg1)
    print("OnSubStart7900309")
end

function Quest79003:OnSubFinish7900309(arg1)
    print("OnSubFinish7900309")
end

function Quest79003:OnSubFailed7900309(arg1)
    print("OnSubFailed7900309")
end

function Quest79003:OnSubStart7900307(arg1)
    print("OnSubStart7900307")
end

function Quest79003:OnSubFinish7900307(arg1)
    print("OnSubFinish7900307")
end

function Quest79003:OnSubFailed7900307(arg1)
    print("OnSubFailed7900307")
end

function Quest79003:OnSubStart7900315(arg1)
    print("OnSubStart7900315")
end

function Quest79003:OnSubFinish7900315(arg1)
    print("OnSubFinish7900315")
end

function Quest79003:OnSubFailed7900315(arg1)
    print("OnSubFailed7900315")
end

function Quest79003:OnSubStart7900316(arg1)
    print("OnSubStart7900316")
end

function Quest79003:OnSubFinish7900316(arg1)
    print("OnSubFinish7900316")
end

function Quest79003:OnSubFailed7900316(arg1)
    print("OnSubFailed7900316")
end

function Quest79003:OnSubStart7900317(arg1)
    print("OnSubStart7900317")
end

function Quest79003:OnSubFinish7900317(arg1)
    print("OnSubFinish7900317")
end

function Quest79003:OnSubFailed7900317(arg1)
    print("OnSubFailed7900317")
end

function Quest79003:OnSubStart7900318(arg1)
    print("OnSubStart7900318")
end

function Quest79003:OnSubFinish7900318(arg1)
    print("OnSubFinish7900318")
end

function Quest79003:OnSubFailed7900318(arg1)
    print("OnSubFailed7900318")
end

function Quest79003:OnSubStart7900306(arg1)
    print("OnSubStart7900306")
    self:CallDelay(3, self.Finish7900306)
end

function Quest79003:OnSubFinish7900306(arg1)
    print("OnSubFinish7900306")
    self:ShowBlackScreen(0.2, 1, 0.2, nil, nil, nil, "")
end

function Quest79003:OnSubFailed7900306(arg1)
    print("OnSubFailed7900306")
end

function Quest79003:OnSubStart7900319(arg1)
    print("OnSubStart7900319")
    self:FinishQuestID(false, 7900319)
end

function Quest79003:OnSubFinish7900319(arg1)
    print("OnSubFinish7900319")
end

function Quest79003:OnSubFailed7900319(arg1)
    print("OnSubFailed7900319")
end

function Quest79003:OnSubStart7900308(arg1)
    print("OnSubStart7900308")
end

function Quest79003:OnSubFinish7900308(arg1)
    print("OnSubFinish7900308")
end

function Quest79003:OnSubFailed7900308(arg1)
    print("OnSubFailed7900308")
end

return Quest79003
