require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75053 = class("Quest75053", QuestActorProxy)
Quest75053.defaultAlias = "Quest75053"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75053:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75053:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7505301"] = self.OnSubStart7505301,
        ["7505302"] = self.OnSubStart7505302,
        ["7505303"] = self.OnSubStart7505303
    }
end

function Quest75053:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7505301"] = self.OnSubFinish7505301,
        ["7505302"] = self.OnSubFinish7505302,
        ["7505303"] = self.OnSubFinish7505303
    }
end

function Quest75053:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75053:Start()
    print("Start")
end

function Quest75053:OnDestroy()
    print("OnDestroy")
end

function Quest75053:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75053:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75053:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc6297Data.alias, 3)
end

function Quest75053:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75053:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest75053:OnSubStart7505301(arg1)
    print("OnSubStart7505301")
    this:CreateQuestNpc(arg1, npcs.Npc6297Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6297Data.alias):DoFreeStyle(1200, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21750Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21750Data.alias):DoFreeStyle(5, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21751Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21751Data.alias):DoFreeStyle(10, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21752Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21752Data.alias):DoFreeStyle(12, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q75053Trigger", "Actor/Gadget/Q75053Trigger", 70900002, 0, {x = -1204.47, y = 307.391, z = 9459.73}, {x = 0.0, y = 26.178, z = 0.0}, true, false)
end

function Quest75053:OnSubFinish7505301(arg1)
    print("OnSubFinish7505301")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21750Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21751Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21752Data.alias)
end

function Quest75053:OnSubStart7505302(arg1)
    print("OnSubStart7505302")
    this:CreateQuestNpc(arg1, npcs.Npc6297Data.id, 0, false, 0)
end

function Quest75053:OnSubFinish7505302(arg1)
    print("OnSubFinish7505302")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc21750Data.id, 0)
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc21751Data.id, 0)
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc21752Data.id, 0)
end

function Quest75053:OnSubStart7505303(arg1)
    print("OnSubStart7505303")
end

function Quest75053:OnSubFinish7505303(arg1)
    print("OnSubFinish7505303")
end

return Quest75053
