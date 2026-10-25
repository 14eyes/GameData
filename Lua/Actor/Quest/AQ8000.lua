require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8000 = class("Quest8000", QuestActorProxy)
Quest8000.defaultAlias = "Quest8000"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest8000:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest8000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["800010"] = self.OnSubStart800010,
        ["800001"] = self.OnSubStart800001,
        ["800002"] = self.OnSubStart800002,
        ["800003"] = self.OnSubStart800003,
        ["800004"] = self.OnSubStart800004,
        ["800005"] = self.OnSubStart800005,
        ["800009"] = self.OnSubStart800009,
        ["800006"] = self.OnSubStart800006,
        ["800008"] = self.OnSubStart800008,
        ["800007"] = self.OnSubStart800007
    }
end

function Quest8000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["800010"] = self.OnSubFinish800010,
        ["800001"] = self.OnSubFinish800001,
        ["800002"] = self.OnSubFinish800002,
        ["800003"] = self.OnSubFinish800003,
        ["800004"] = self.OnSubFinish800004,
        ["800005"] = self.OnSubFinish800005,
        ["800009"] = self.OnSubFinish800009,
        ["800006"] = self.OnSubFinish800006,
        ["800008"] = self.OnSubFinish800008,
        ["800007"] = self.OnSubFinish800007
    }
end

function Quest8000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["800005"] = self.OnSubFailed800005,
        ["800009"] = self.OnSubFailed800009,
        ["800008"] = self.OnSubFailed800008
    }
end

function Quest8000:Start()
    print("Start")
end

function Quest8000:OnDestroy()
    print("OnDestroy")
end

function Quest8000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8000:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest8000:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
end

function Quest8000:OnSubStart800010(arg1)
    print("OnSubStart800010")
end

function Quest8000:OnSubFinish800010(arg1)
    print("OnSubFinish800010")
end

function Quest8000:OnSubStart800001(arg1)
    print("OnSubStart800001")
    self:CreateQuestNpc(arg1, npcs.Npc1015Data.id, 1)
    self:NotifyTo(npcs.Npc2016Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc201601Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc201601Data.alias):DoFreeStyle(9000, true, nil, true, true)
end

function Quest8000:OnSubFinish800001(arg1)
    print("OnSubFinish800001")
    self:SafeDestroyQuestNpc(npcs.Npc1015Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc201601Data.alias, 3)
    self:NotifyTo(npcs.Npc2016Data.alias, 0, true)
end

function Quest8000:OnSubStart800002(arg1)
    print("OnSubStart800002")
end

function Quest8000:OnSubFinish800002(arg1)
    print("OnSubFinish800002")
end

function Quest8000:OnSubStart800003(arg1)
    print("OnSubStart800003")
    self:CreateQuestNpc(arg1, npcs.Npc10910Data.id, 1)
end

function Quest8000:OnSubFinish800003(arg1)
    print("OnSubFinish800003")
end

function Quest8000:OnSubStart800004(arg1)
    print("OnSubStart800004")
    self:ShowBlackScreen(0.5, 1, 0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10921Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc10921Data.alias)
    end, nil, nil, "")
end

function Quest8000:OnSubFinish800004(arg1)
    print("OnSubFinish800004")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest8000:OnSubStart800005(arg1)
    print("OnSubStart800005")
    self:CreateQuestNpc(arg1, npcs.Npc10916Data.id, 1)
end

function Quest8000:OnSubFinish800005(arg1)
    print("OnSubFinish800005")
    self:SafeDestroyQuestNpc(npcs.Npc10910Data.alias, 20104)
    self:SafeDestroyQuestNpc(npcs.Npc10921Data.alias, 20104)
end

function Quest8000:OnSubFailed800005(arg1)
    print("OnSubFailed800005")
    self:SafeDestroyQuestNpc(npcs.Npc10916Data.alias, 20104)
end

function Quest8000:OnSubStart800009(arg1)
    print("OnSubStart800009")
    self:ShowBlackScreen(0.5, 1, 0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10916Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc10916Data.alias)
    end, nil, nil, "")
end

function Quest8000:OnSubFinish800009(arg1)
    print("OnSubFinish800009")
    self:SafeDestroyQuestNpc(npcs.Npc10916Data.alias, 20104)
end

function Quest8000:OnSubFailed800009(arg1)
    print("OnSubFailed800009")
    self:SafeDestroyQuestNpc(npcs.Npc10916Data.alias, 20104)
end

function Quest8000:OnSubStart800006(arg1)
    print("OnSubStart800006")
end

function Quest8000:OnSubFinish800006(arg1)
    print("OnSubFinish800006")
end

function Quest8000:OnSubStart800008(arg1)
    print("OnSubStart800008")
    self:ShowBlackScreen(0.5, 1, 0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10916Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc10916Data.alias)
    end, nil, nil, "")
end

function Quest8000:OnSubFinish800008(arg1)
    print("OnSubFinish800008")
    self:SafeDestroyQuestNpc(npcs.Npc10916Data.alias, 20104)
end

function Quest8000:OnSubFailed800008(arg1)
    print("OnSubFailed800008")
    self:SafeDestroyQuestNpc(npcs.Npc10916Data.alias, 20104)
end

function Quest8000:OnSubStart800007(arg1)
    print("OnSubStart800007")
    self:ActionSafeCall(function(arg1_2)
        if sceneData.currSceneID == 20104 then
            arg1_2:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 2)
        end
    end)
end

function Quest8000:OnSubFinish800007(arg1)
    print("OnSubFinish800007")
end

return Quest8000
