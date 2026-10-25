require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74224 = class("Quest74224", QuestActorProxy)
Quest74224.defaultAlias = "Quest74224"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74224:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74224:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7422401"] = self.OnSubStart7422401,
        ["7422402"] = self.OnSubStart7422402,
        ["7422403"] = self.OnSubStart7422403,
        ["7422406"] = self.OnSubStart7422406,
        ["7422407"] = self.OnSubStart7422407,
        ["7422404"] = self.OnSubStart7422404,
        ["7422410"] = self.OnSubStart7422410,
        ["7422405"] = self.OnSubStart7422405,
        ["7422411"] = self.OnSubStart7422411,
        ["7422408"] = self.OnSubStart7422408,
        ["7422409"] = self.OnSubStart7422409
    }
end

function Quest74224:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7422401"] = self.OnSubFinish7422401,
        ["7422402"] = self.OnSubFinish7422402,
        ["7422403"] = self.OnSubFinish7422403,
        ["7422406"] = self.OnSubFinish7422406,
        ["7422407"] = self.OnSubFinish7422407,
        ["7422404"] = self.OnSubFinish7422404,
        ["7422410"] = self.OnSubFinish7422410,
        ["7422405"] = self.OnSubFinish7422405,
        ["7422411"] = self.OnSubFinish7422411,
        ["7422408"] = self.OnSubFinish7422408,
        ["7422409"] = self.OnSubFinish7422409
    }
end

function Quest74224:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74224:Start()
    print("Start")
end

function Quest74224:OnDestroy()
    print("OnDestroy")
end

function Quest74224:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74224:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74224:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74224:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74224:OnSubStart7422401(arg1)
    print("OnSubStart7422401")
    actorMgr:CreateActorWithPos("Q7422401Trigger", "Actor/Gadget/Q7422401Trigger", 70900002, 0, points.TPos_Q7422401Trigger.pos, points.TPos_Q7422401Trigger.rot, true, false, 3)
end

function Quest74224:OnSubFinish7422401(arg1)
    print("OnSubFinish7422401")
end

function Quest74224:OnSubStart7422402(arg1)
    print("OnSubStart7422402")
    this:CreateQuestNpc(arg1, npcs.Npc21083Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21083Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest74224:OnSubFinish7422402(arg1)
    print("OnSubFinish7422402")
end

function Quest74224:OnSubStart7422403(arg1)
    print("OnSubStart7422403")
    actorMgr:CreateActorWithPos("Q7422403Trigger", "Actor/Gadget/Q7422403Trigger", 70900002, 0, points.TPos_Q7422403Trigger.pos, points.TPos_Q7422403Trigger.rot, true, false, 3)
end

function Quest74224:OnSubFinish7422403(arg1)
    print("OnSubFinish7422403")
end

function Quest74224:OnSubStart7422406(arg1)
    print("OnSubStart7422406")
end

function Quest74224:OnSubFinish7422406(arg1)
    print("OnSubFinish7422406")
end

function Quest74224:OnSubStart7422407(arg1)
    print("OnSubStart7422407")
end

function Quest74224:OnSubFinish7422407(arg1)
    print("OnSubFinish7422407")
end

function Quest74224:OnSubStart7422404(arg1)
    print("OnSubStart7422404")
    this:CreateQuestNpc(arg1, npcs.Npc21514Data.id, 0)
end

function Quest74224:OnSubFinish7422404(arg1)
    print("OnSubFinish7422404")
end

function Quest74224:OnSubStart7422410(arg1)
    print("OnSubStart7422410")
end

function Quest74224:OnSubFinish7422410(arg1)
    print("OnSubFinish7422410")
end

function Quest74224:OnSubStart7422405(arg1)
    print("OnSubStart7422405")
    this:CreateQuestNpc(arg1, npcs.Npc21516Data.id, 0)
end

function Quest74224:OnSubFinish7422405(arg1)
    print("OnSubFinish7422405")
    this:SafeDestroyQuestNpc(npcs.Npc21514Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21516Data.alias)
end

function Quest74224:OnSubStart7422411(arg1)
    print("OnSubStart7422411")
    this:CreateQuestNpc(arg1, npcs.Npc21514Data.id, 0)
end

function Quest74224:OnSubFinish7422411(arg1)
    print("OnSubFinish7422411")
end

function Quest74224:OnSubStart7422408(arg1)
    print("OnSubStart7422408")
end

function Quest74224:OnSubFinish7422408(arg1)
    print("OnSubFinish7422408")
end

function Quest74224:OnSubStart7422409(arg1)
    print("OnSubStart7422409")
end

function Quest74224:OnSubFinish7422409(arg1)
    print("OnSubFinish7422409")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21083Data.alias)
end

return Quest74224
