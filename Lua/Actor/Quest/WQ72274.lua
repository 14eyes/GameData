require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72274 = class("Quest72274", QuestActorProxy)
Quest72274.defaultAlias = "Quest72274"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72274:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72274:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7227401"] = self.OnSubStart7227401,
        ["7227402"] = self.OnSubStart7227402,
        ["7227403"] = self.OnSubStart7227403
    }
end

function Quest72274:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7227401"] = self.OnSubFinish7227401,
        ["7227402"] = self.OnSubFinish7227402,
        ["7227403"] = self.OnSubFinish7227403
    }
end

function Quest72274:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72274:Start()
    print("Start")
end

function Quest72274:OnDestroy()
    print("OnDestroy")
end

function Quest72274:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72274:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72274:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72274:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72274:OnSubStart7227401(arg1)
    print("OnSubStart7227401")
    self:CreateQuestNpc(arg1, npcs.Npc10324Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12212Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 3)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest72274:OnSubFinish7227401(arg1)
    print("OnSubFinish7227401")
    self:NpcDestroyWithBlackscreen(40050, npcs.Npc10324Data.alias)
    self:NpcDestroyWithBlackscreen(40050, npcs.Npc12212Data.alias)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 40050)
end

function Quest72274:OnSubStart7227402(arg1)
    print("OnSubStart7227402")
    self:CreateQuestNpc(arg1, npcs.Npc10325Data.id, 1)
    actorMgr:CreateActorWithPos("Q72274Trigger1", "Actor/Gadget/Q72274Trigger1", 70900002, 0, sceneData:GetDummyPoint(40050, "Q7227402").pos, sceneData:GetDummyPoint(40050, "Q7227402").rot, true, false, 40050)
end

function Quest72274:OnSubFinish7227402(arg1)
    print("OnSubFinish7227402")
    self:NpcDestroyWithBlackscreen(40050, npcs.Npc10325Data.alias)
end

function Quest72274:OnSubStart7227403(arg1)
    print("OnSubStart7227403")
end

function Quest72274:OnSubFinish7227403(arg1)
    print("OnSubFinish7227403")
end

return Quest72274
