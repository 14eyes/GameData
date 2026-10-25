require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71046 = class("Quest71046", QuestActorProxy)
Quest71046.defaultAlias = "Quest71046"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71046:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71046:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7104601"] = self.OnSubStart7104601,
        ["7104602"] = self.OnSubStart7104602,
        ["7104603"] = self.OnSubStart7104603
    }
end

function Quest71046:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7104601"] = self.OnSubFinish7104601,
        ["7104602"] = self.OnSubFinish7104602,
        ["7104603"] = self.OnSubFinish7104603
    }
end

function Quest71046:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71046:Start()
    print("Start")
end

function Quest71046:OnDestroy()
    print("OnDestroy")
end

function Quest71046:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71046:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71046:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71046:OnSubStart7104601(arg1)
    print("OnSubStart7104601")
    self:CreateQuestNpc(arg1, npcs.Npc20559Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20560Data.id, 2)
    actorMgr:CreateActorWithPos("Q71046Trigger", "Actor/Gadget/Q71046Trigger", 70900002, 0, {x = -682, y = 219, z = 1409}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest71046:OnSubFinish7104601(arg1)
    print("OnSubFinish7104601")
    self:SafeDestroyQuestNpc(npcs.Npc20559Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20560Data.alias, 3)
end

function Quest71046:OnSubStart7104602(arg1)
    print("OnSubStart7104602")
end

function Quest71046:OnSubFinish7104602(arg1)
    print("OnSubFinish7104602")
end

function Quest71046:OnSubStart7104603(arg1)
    print("OnSubStart7104603")
end

function Quest71046:OnSubFinish7104603(arg1)
    print("OnSubFinish7104603")
end

return Quest71046
