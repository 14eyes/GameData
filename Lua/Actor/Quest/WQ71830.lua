require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71830 = class("Quest71830", QuestActorProxy)
Quest71830.defaultAlias = "Quest71830"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71830:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71830:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7183001"] = self.OnSubStart7183001,
        ["7183002"] = self.OnSubStart7183002,
        ["7183003"] = self.OnSubStart7183003,
        ["7183004"] = self.OnSubStart7183004,
        ["7183007"] = self.OnSubStart7183007,
        ["7183005"] = self.OnSubStart7183005,
        ["7183006"] = self.OnSubStart7183006,
        ["7183008"] = self.OnSubStart7183008
    }
end

function Quest71830:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7183001"] = self.OnSubFinish7183001,
        ["7183002"] = self.OnSubFinish7183002,
        ["7183003"] = self.OnSubFinish7183003,
        ["7183004"] = self.OnSubFinish7183004,
        ["7183007"] = self.OnSubFinish7183007,
        ["7183005"] = self.OnSubFinish7183005,
        ["7183006"] = self.OnSubFinish7183006,
        ["7183008"] = self.OnSubFinish7183008
    }
end

function Quest71830:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71830:Start()
    print("Start")
end

function Quest71830:OnDestroy()
    print("OnDestroy")
end

function Quest71830:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71830:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71830:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71830:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71830:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71830:OnSubStart7183001(arg1)
    print("OnSubStart7183001")
    self:CreateQuestNpc(arg1, npcs.Npc12326Data.id, 1)
end

function Quest71830:OnSubFinish7183001(arg1)
    print("OnSubFinish7183001")
end

function Quest71830:OnSubStart7183002(arg1)
    print("OnSubStart7183002")
    self:CreateQuestNpc(arg1, npcs.Npc12326Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc12326Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest71830:OnSubFinish7183002(arg1)
    print("OnSubFinish7183002")
end

function Quest71830:OnSubStart7183003(arg1)
    print("OnSubStart7183003")
    actorMgr:CreateActorWithPos("Q7183003Trigger", "Actor/Gadget/Q7183003Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7183003_guide").pos, sceneData:GetDummyPoint(3, "Q7183003_guide").rot, true, false, 3)
end

function Quest71830:OnSubFinish7183003(arg1)
    print("OnSubFinish7183003")
    self:ActorDestroy("Q7183003Trigger")
end

function Quest71830:OnSubStart7183004(arg1)
    print("OnSubStart7183004")
    actorMgr:CreateActorWithPos("Q7183004Trigger", "Actor/Gadget/Q7183004Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7183003_guide").pos, sceneData:GetDummyPoint(3, "Q7183003_guide").rot, true, false, 3)
end

function Quest71830:OnSubFinish7183004(arg1)
    print("OnSubFinish7183004")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc12329Data.alias, 3)
        arg1:SafeDestroyQuestNpc(npcs.Npc12386Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest71830:OnSubStart7183007(arg1)
    print("OnSubStart7183007")
end

function Quest71830:OnSubFinish7183007(arg1)
    print("OnSubFinish7183007")
end

function Quest71830:OnSubStart7183005(arg1)
    print("OnSubStart7183005")
end

function Quest71830:OnSubFinish7183005(arg1)
    print("OnSubFinish7183005")
end

function Quest71830:OnSubStart7183006(arg1)
    print("OnSubStart7183006")
end

function Quest71830:OnSubFinish7183006(arg1)
    print("OnSubFinish7183006")
    self:SafeDestroyQuestNpc(npcs.Npc12326Data.alias, 3)
end

function Quest71830:OnSubStart7183008(arg1)
    print("OnSubStart7183008")
end

function Quest71830:OnSubFinish7183008(arg1)
    print("OnSubFinish7183008")
end

return Quest71830
