require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71058 = class("Quest71058", QuestActorProxy)
Quest71058.defaultAlias = "Quest71058"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71058:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71058:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7105801"] = self.OnSubStart7105801,
        ["7105802"] = self.OnSubStart7105802,
        ["7105803"] = self.OnSubStart7105803,
        ["7105804"] = self.OnSubStart7105804,
        ["7105805"] = self.OnSubStart7105805,
        ["7105806"] = self.OnSubStart7105806
    }
end

function Quest71058:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7105801"] = self.OnSubFinish7105801,
        ["7105802"] = self.OnSubFinish7105802,
        ["7105803"] = self.OnSubFinish7105803,
        ["7105804"] = self.OnSubFinish7105804,
        ["7105805"] = self.OnSubFinish7105805,
        ["7105806"] = self.OnSubFinish7105806
    }
end

function Quest71058:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71058:Start()
    print("Start")
end

function Quest71058:OnDestroy()
    print("OnDestroy")
end

function Quest71058:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71058:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71058:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71058:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest71058:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71058:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 710580207 then
        self:CallDelay(1, function(arg1)
            arg1:DestroyQuestNpcActorByAlias(npcs.Npc20535Data.alias, false)
        end)
    end
end

function Quest71058:OnSubStart7105801(arg1)
    print("OnSubStart7105801")
end

function Quest71058:OnSubFinish7105801(arg1)
    print("OnSubFinish7105801")
end

function Quest71058:OnSubStart7105802(arg1)
    print("OnSubStart7105802")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "", false, true)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20535Data.id, 1, npcs.Npc20535Data.alias)
end

function Quest71058:OnSubFinish7105802(arg1)
    print("OnSubFinish7105802")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20535Data.alias)
end

function Quest71058:OnSubStart7105803(arg1)
    print("OnSubStart7105803")
end

function Quest71058:OnSubFinish7105803(arg1)
    print("OnSubFinish7105803")
end

function Quest71058:OnSubStart7105804(arg1)
    print("OnSubStart7105804")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20535Data.id, 1, npcs.Npc20535Data.alias)
end

function Quest71058:OnSubFinish7105804(arg1)
    print("OnSubFinish7105804")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20535Data.alias)
end

function Quest71058:OnSubStart7105805(arg1)
    print("OnSubStart7105805")
    self:CallDelay(1, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20535Data.id, 1)
    end)
end

function Quest71058:OnSubFinish7105805(arg1)
    print("OnSubFinish7105805")
end

function Quest71058:OnSubStart7105806(arg1)
    print("OnSubStart7105806")
end

function Quest71058:OnSubFinish7105806(arg1)
    print("OnSubFinish7105806")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20535Data.alias)
    self:ShowBlackScreen(0.2, 1.5, 0.5, nil, nil, nil, "", false, true)
end

return Quest71058
