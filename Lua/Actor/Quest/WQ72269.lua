require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72269 = class("Quest72269", QuestActorProxy)
Quest72269.defaultAlias = "Quest72269"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72269:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72269:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7226908"] = self.OnSubStart7226908,
        ["7226913"] = self.OnSubStart7226913,
        ["7226901"] = self.OnSubStart7226901,
        ["7226902"] = self.OnSubStart7226902,
        ["7226903"] = self.OnSubStart7226903,
        ["7226904"] = self.OnSubStart7226904,
        ["7226905"] = self.OnSubStart7226905,
        ["7226906"] = self.OnSubStart7226906,
        ["7226907"] = self.OnSubStart7226907
    }
end

function Quest72269:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7226908"] = self.OnSubFinish7226908,
        ["7226913"] = self.OnSubFinish7226913,
        ["7226901"] = self.OnSubFinish7226901,
        ["7226902"] = self.OnSubFinish7226902,
        ["7226903"] = self.OnSubFinish7226903,
        ["7226904"] = self.OnSubFinish7226904,
        ["7226905"] = self.OnSubFinish7226905,
        ["7226906"] = self.OnSubFinish7226906,
        ["7226907"] = self.OnSubFinish7226907
    }
end

function Quest72269:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72269:Start()
    print("Start")
end

function Quest72269:OnDestroy()
    print("OnDestroy")
end

function Quest72269:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72269:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72269:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72269:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72269:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72269:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest72269:OnSubStart7226908(arg1)
    print("OnSubStart7226908")
    actorMgr:CreateActorWithPos("Q7226908Trigger", "Actor/Gadget/Q7226908Trigger", 70900002, 0, {x = 508.5756, y = 129.8, z = -297.8302}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72269:OnSubFinish7226908(arg1)
    print("OnSubFinish7226908")
end

function Quest72269:OnSubStart7226913(arg1)
    print("OnSubStart7226913")
    actorMgr:CreateActorWithPos("Q7226913Trigger", "Actor/Gadget/Q7226913Trigger", 70900002, 0, {x = 507.1243, y = 209.8496, z = -298.5924}, {x = 0, y = 0, z = 0}, true, false, 5)
end

function Quest72269:OnSubFinish7226913(arg1)
    print("OnSubFinish7226913")
end

function Quest72269:OnSubStart7226901(arg1)
    print("OnSubStart7226901")
    self:NpcCreate(arg1, npcs.NPC20494Data.id, 1)
end

function Quest72269:OnSubFinish7226901(arg1)
    print("OnSubFinish7226901")
    self:GetQuestNpcActor(npcs.NPC20494Data.alias):DestroyWithDither(false, 0.5)
end

function Quest72269:OnSubStart7226902(arg1)
    print("OnSubStart7226902")
end

function Quest72269:OnSubFinish7226902(arg1)
    print("OnSubFinish7226902")
end

function Quest72269:OnSubStart7226903(arg1)
    print("OnSubStart7226903")
end

function Quest72269:OnSubFinish7226903(arg1)
    print("OnSubFinish7226903")
end

function Quest72269:OnSubStart7226904(arg1)
    print("OnSubStart7226904")
end

function Quest72269:OnSubFinish7226904(arg1)
    print("OnSubFinish7226904")
end

function Quest72269:OnSubStart7226905(arg1)
    print("OnSubStart7226905")
end

function Quest72269:OnSubFinish7226905(arg1)
    print("OnSubFinish7226905")
end

function Quest72269:OnSubStart7226906(arg1)
    print("OnSubStart7226906")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.NPC20494Data.id, 1)
    end)
end

function Quest72269:OnSubFinish7226906(arg1)
    print("OnSubFinish7226906")
end

function Quest72269:OnSubStart7226907(arg1)
    print("OnSubStart7226907")
end

function Quest72269:OnSubFinish7226907(arg1)
    print("OnSubFinish7226907")
    self:NpcDestroyWithDither(npcs.NPC20494Data.alias, 5)
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7217707", nil, nil, nil, false)
    end)
end

return Quest72269
