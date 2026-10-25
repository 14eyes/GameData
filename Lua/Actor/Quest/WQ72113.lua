require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72113 = class("Quest72113", QuestActorProxy)
Quest72113.defaultAlias = "Quest72113"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72113:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72113:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7211301"] = self.OnSubStart7211301,
        ["7211302"] = self.OnSubStart7211302,
        ["7211303"] = self.OnSubStart7211303,
        ["7211304"] = self.OnSubStart7211304,
        ["7211305"] = self.OnSubStart7211305,
        ["7211306"] = self.OnSubStart7211306,
        ["7211315"] = self.OnSubStart7211315,
        ["7211307"] = self.OnSubStart7211307,
        ["7211312"] = self.OnSubStart7211312,
        ["7211308"] = self.OnSubStart7211308,
        ["7211314"] = self.OnSubStart7211314,
        ["7211319"] = self.OnSubStart7211319,
        ["7211309"] = self.OnSubStart7211309,
        ["7211313"] = self.OnSubStart7211313,
        ["7211316"] = self.OnSubStart7211316,
        ["7211318"] = self.OnSubStart7211318,
        ["7211310"] = self.OnSubStart7211310,
        ["7211317"] = self.OnSubStart7211317,
        ["7211311"] = self.OnSubStart7211311
    }
end

function Quest72113:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7211301"] = self.OnSubFinish7211301,
        ["7211302"] = self.OnSubFinish7211302,
        ["7211303"] = self.OnSubFinish7211303,
        ["7211304"] = self.OnSubFinish7211304,
        ["7211305"] = self.OnSubFinish7211305,
        ["7211306"] = self.OnSubFinish7211306,
        ["7211315"] = self.OnSubFinish7211315,
        ["7211307"] = self.OnSubFinish7211307,
        ["7211312"] = self.OnSubFinish7211312,
        ["7211308"] = self.OnSubFinish7211308,
        ["7211314"] = self.OnSubFinish7211314,
        ["7211319"] = self.OnSubFinish7211319,
        ["7211309"] = self.OnSubFinish7211309,
        ["7211313"] = self.OnSubFinish7211313,
        ["7211316"] = self.OnSubFinish7211316,
        ["7211318"] = self.OnSubFinish7211318,
        ["7211310"] = self.OnSubFinish7211310,
        ["7211317"] = self.OnSubFinish7211317,
        ["7211311"] = self.OnSubFinish7211311
    }
end

function Quest72113:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7211301"] = self.OnSubFailed7211301,
        ["7211302"] = self.OnSubFailed7211302,
        ["7211303"] = self.OnSubFailed7211303,
        ["7211304"] = self.OnSubFailed7211304,
        ["7211305"] = self.OnSubFailed7211305,
        ["7211306"] = self.OnSubFailed7211306,
        ["7211315"] = self.OnSubFailed7211315,
        ["7211307"] = self.OnSubFailed7211307,
        ["7211312"] = self.OnSubFailed7211312,
        ["7211308"] = self.OnSubFailed7211308,
        ["7211314"] = self.OnSubFailed7211314,
        ["7211319"] = self.OnSubFailed7211319,
        ["7211309"] = self.OnSubFailed7211309,
        ["7211313"] = self.OnSubFailed7211313,
        ["7211316"] = self.OnSubFailed7211316,
        ["7211318"] = self.OnSubFailed7211318,
        ["7211310"] = self.OnSubFailed7211310,
        ["7211317"] = self.OnSubFailed7211317,
        ["7211311"] = self.OnSubFailed7211311
    }
end

function Quest72113:Start()
    print("Start")
end

function Quest72113:OnDestroy()
    print("OnDestroy")
end

function Quest72113:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72113:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72113:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72113:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("invoke1")
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local n = -0.05
        local v = 1
        avatarPos.x = avatarPos.x + avatarForward.x * n
        avatarPos.z = avatarPos.z + avatarForward.z * v
        print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
        local v2 = avatarForward
        v2.x = v2.x * -0.1
        v2.z = v2.z * -1
        self.CreateQuestNpcByIdWithPos(self, 7211307, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
        self.CallDelay(self, 1, function()
            self:RequestInteraction(npcs.PaimonData.alias)
        end)
    elseif arg1 == 2 then
        print("invoke2")
        self.ShowReadingDialog(self, 100807)
    elseif arg1 == 3 then
        print("invoke3")
        self.ShowReadingDialog(self, 100907)
    end
end

function Quest72113:RequestPaimonInteractionPaimon()
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7211313, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest72113:RequestRingoInteraction()
    print("RequestRingoInteraction")
    self:RequestInteraction(npcs.Npc20317Data.alias)
end

function Quest72113:inputon()
    print("inputon")
    self:EnablePlayerInput(true)
end

function Quest72113:inputoff()
    print("inputoff")
    self:EnablePlayerInput(false)
end

function Quest72113:interactionPaimon()
    print("interactionPaimon")
    self:RequestInteraction(npcs.paimonData.alias)
end

function Quest72113:Transmit()
    print("Transmit")
    self:LevelLoadFinishSafeCall(self.questfinish)
end

function Quest72113:questfinish()
    print("questfinish")
    self:FinishQuestID(false, 7211317)
    self:RequestRingoInteraction()
end

function Quest72113:destory()
    print("destory")
    self:GetQuestNpcActor(npcs.paimonData.alias):DestroyWithDisappear(false)
end

function Quest72113:actor()
    print("actor")
    actorMgr:CreateActorWithPos(datas.Q72113Trigger2_.alias, datas.Q72113Trigger2_.script, datas.Q72113Trigger2_.id, 0, datas.Q72113Trigger2_.point.pos, datas.Q72113Trigger2_.point.rot, true, false, 3)
end

function Quest72113:OnSubStart7211301(arg1)
    print("OnSubStart7211301")
end

function Quest72113:OnSubFinish7211301(arg1)
    print("OnSubFinish7211301")
end

function Quest72113:OnSubFailed7211301(arg1)
    print("OnSubFailed7211301")
end

function Quest72113:OnSubStart7211302(arg1)
    print("OnSubStart7211302")
    self:CreateQuestNpc(arg1, npcs.paimonData.id, 1)
    self:CallDelay(0.2, self.interactionPaimon)
    self:CallDelay(0.3, self.inputon)
    self:CallDelay(0.1, self.inputoff)
end

function Quest72113:OnSubFinish7211302(arg1)
    print("OnSubFinish7211302")
    self:GetQuestNpcActor(npcs.paimonData.alias):DestroyWithDisappear(false)
end

function Quest72113:OnSubFailed7211302(arg1)
    print("OnSubFailed7211302")
end

function Quest72113:OnSubStart7211303(arg1)
    print("OnSubStart7211303")
    self:CreateQuestNpc(arg1, npcs.paimonData.id, 1)
    self:CallDelay(0.2, self.interactionPaimon)
    self:CallDelay(0.1, self.inputoff)
    self:CallDelay(0.3, self.inputon)
end

function Quest72113:OnSubFinish7211303(arg1)
    print("OnSubFinish7211303")
    self:GetQuestNpcActor(npcs.paimonData.alias):DestroyWithDisappear(false)
end

function Quest72113:OnSubFailed7211303(arg1)
    print("OnSubFailed7211303")
end

function Quest72113:OnSubStart7211304(arg1)
    print("OnSubStart7211304")
    self:CreateQuestNpc(arg1, npcs.paimonData.id, 1)
    self:CallDelay(0.2, self.interactionPaimon)
    self:CallDelay(0.3, self.inputon)
    self:CallDelay(0.1, self.inputoff)
end

function Quest72113:OnSubFinish7211304(arg1)
    print("OnSubFinish7211304")
    self:GetQuestNpcActor(npcs.paimonData.alias):DestroyWithDisappear(false)
end

function Quest72113:OnSubFailed7211304(arg1)
    print("OnSubFailed7211304")
end

function Quest72113:OnSubStart7211305(arg1)
    print("OnSubStart7211305")
    self:CreateQuestNpc(arg1, npcs.paimonData.id, 1)
    self:CallDelay(0.2, self.interactionPaimon)
    self:CallDelay(0.3, self.inputon)
    self:CallDelay(0.1, self.inputoff)
end

function Quest72113:OnSubFinish7211305(arg1)
    print("OnSubFinish7211305")
    self:GetQuestNpcActor(npcs.paimonData.alias):DestroyWithDisappear(false)
end

function Quest72113:OnSubFailed7211305(arg1)
    print("OnSubFailed7211305")
end

function Quest72113:OnSubStart7211306(arg1)
    print("OnSubStart7211306")
end

function Quest72113:OnSubFinish7211306(arg1)
    print("OnSubFinish7211306")
end

function Quest72113:OnSubFailed7211306(arg1)
    print("OnSubFailed7211306")
end

function Quest72113:OnSubStart7211315(arg1)
    print("OnSubStart7211315")
end

function Quest72113:OnSubFinish7211315(arg1)
    print("OnSubFinish7211315")
end

function Quest72113:OnSubFailed7211315(arg1)
    print("OnSubFailed7211315")
end

function Quest72113:OnSubStart7211307(arg1)
    print("OnSubStart7211307")
end

function Quest72113:OnSubFinish7211307(arg1)
    print("OnSubFinish7211307")
end

function Quest72113:OnSubFailed7211307(arg1)
    print("OnSubFailed7211307")
end

function Quest72113:OnSubStart7211312(arg1)
    print("OnSubStart7211312")
end

function Quest72113:OnSubFinish7211312(arg1)
    print("OnSubFinish7211312")
end

function Quest72113:OnSubFailed7211312(arg1)
    print("OnSubFailed7211312")
end

function Quest72113:OnSubStart7211308(arg1)
    print("OnSubStart7211308")
    self:FinishQuestID(false, 7211308)
end

function Quest72113:OnSubFinish7211308(arg1)
    print("OnSubFinish7211308")
end

function Quest72113:OnSubFailed7211308(arg1)
    print("OnSubFailed7211308")
end

function Quest72113:OnSubStart7211314(arg1)
    print("OnSubStart7211314")
    self:CreateQuestNpc(arg1, npcs.paimonData.id, 1)
    self:ActionSafeCall(self.interactionPaimon)
end

function Quest72113:OnSubFinish7211314(arg1)
    print("OnSubFinish7211314")
end

function Quest72113:OnSubFailed7211314(arg1)
    print("OnSubFailed7211314")
end

function Quest72113:OnSubStart7211319(arg1)
    print("OnSubStart7211319")
end

function Quest72113:OnSubFinish7211319(arg1)
    print("OnSubFinish7211319")
end

function Quest72113:OnSubFailed7211319(arg1)
    print("OnSubFailed7211319")
end

function Quest72113:OnSubStart7211309(arg1)
    print("OnSubStart7211309")
    actorMgr:CreateActorWithPos(datas.Q72113Trigger_.alias, datas.Q72113Trigger_.script, datas.Q72113Trigger_.id, 0, datas.Q72113Trigger_.point.pos, datas.Q72113Trigger_.point.rot, true, false, 3)
end

function Quest72113:OnSubFinish7211309(arg1)
    print("OnSubFinish7211309")
end

function Quest72113:OnSubFailed7211309(arg1)
    print("OnSubFailed7211309")
end

function Quest72113:OnSubStart7211313(arg1)
    print("OnSubStart7211313")
end

function Quest72113:OnSubFinish7211313(arg1)
    print("OnSubFinish7211313")
end

function Quest72113:OnSubFailed7211313(arg1)
    print("OnSubFailed7211313")
end

function Quest72113:OnSubStart7211316(arg1)
    print("OnSubStart7211316")
end

function Quest72113:OnSubFinish7211316(arg1)
    print("OnSubFinish7211316")
end

function Quest72113:OnSubFailed7211316(arg1)
    print("OnSubFailed7211316")
end

function Quest72113:OnSubStart7211318(arg1)
    print("OnSubStart7211318")
    actorMgr:CreateActorWithPos(datas.Q72113Trigger1_.alias, datas.Q72113Trigger1_.script, datas.Q72113Trigger1_.id, 0, datas.Q72113Trigger1_.point.pos, datas.Q72113Trigger1_.point.rot, true, false, 3)
end

function Quest72113:OnSubFinish7211318(arg1)
    print("OnSubFinish7211318")
end

function Quest72113:OnSubFailed7211318(arg1)
    print("OnSubFailed7211318")
end

function Quest72113:OnSubStart7211310(arg1)
    print("OnSubStart7211310")
    self:CreateQuestNpc(arg1, npcs.paimonData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20317Data.id, 2)
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.interactionPaimon, nil, nil, "", false, true)
end

function Quest72113:OnSubFinish7211310(arg1)
    print("OnSubFinish7211310")
    self:SafeDestroyQuestNpc(npcs.paimonData.alias, 3)
end

function Quest72113:OnSubFailed7211310(arg1)
    print("OnSubFailed7211310")
end

function Quest72113:OnSubStart7211317(arg1)
    print("OnSubStart7211317")
    self:TransmitPlayerById(arg1, 1, nil, self.questfinish)
end

function Quest72113:OnSubFinish7211317(arg1)
    print("OnSubFinish7211317")
end

function Quest72113:OnSubFailed7211317(arg1)
    print("OnSubFailed7211317")
end

function Quest72113:OnSubStart7211311(arg1)
    print("OnSubStart7211311")
    self:CreateQuestNpc(arg1, npcs.Npc20317Data.id, 1)
    self:ShowBlackScreen(0, 0.5, 0, self.actor, nil, nil, "", false, true)
end

function Quest72113:OnSubFinish7211311(arg1)
    print("OnSubFinish7211311")
    self:SafeDestroyQuestNpc(npcs.Npc20317Data.alias, 3)
end

function Quest72113:OnSubFailed7211311(arg1)
    print("OnSubFailed7211311")
end

return Quest72113
