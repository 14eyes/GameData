require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73330 = class("Quest73330", QuestActorProxy)
Quest73330.defaultAlias = "Quest73330"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73330:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73330:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7333001"] = self.OnSubStart7333001,
        ["7333002"] = self.OnSubStart7333002,
        ["7333009"] = self.OnSubStart7333009,
        ["7333010"] = self.OnSubStart7333010,
        ["7333011"] = self.OnSubStart7333011,
        ["7333012"] = self.OnSubStart7333012,
        ["7333013"] = self.OnSubStart7333013,
        ["7333004"] = self.OnSubStart7333004,
        ["7333006"] = self.OnSubStart7333006,
        ["7333007"] = self.OnSubStart7333007,
        ["7333008"] = self.OnSubStart7333008,
        ["7333005"] = self.OnSubStart7333005,
        ["7333003"] = self.OnSubStart7333003
    }
end

function Quest73330:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7333001"] = self.OnSubFinish7333001,
        ["7333002"] = self.OnSubFinish7333002,
        ["7333009"] = self.OnSubFinish7333009,
        ["7333010"] = self.OnSubFinish7333010,
        ["7333011"] = self.OnSubFinish7333011,
        ["7333012"] = self.OnSubFinish7333012,
        ["7333013"] = self.OnSubFinish7333013,
        ["7333004"] = self.OnSubFinish7333004,
        ["7333006"] = self.OnSubFinish7333006,
        ["7333007"] = self.OnSubFinish7333007,
        ["7333008"] = self.OnSubFinish7333008,
        ["7333005"] = self.OnSubFinish7333005,
        ["7333003"] = self.OnSubFinish7333003
    }
end

function Quest73330:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73330:Start()
    print("Start")
end

function Quest73330:OnDestroy()
    print("OnDestroy")
end

function Quest73330:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73330:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73330:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73330:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8)
end

function Quest73330:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73330:OnSubStart7333001(arg1)
    print("OnSubStart7333001")
end

function Quest73330:OnSubFinish7333001(arg1)
    print("OnSubFinish7333001")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId01)
    end)
end

function Quest73330:OnSubStart7333002(arg1)
    print("OnSubStart7333002")
end

function Quest73330:OnSubFinish7333002(arg1)
    print("OnSubFinish7333002")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId02)
    end)
end

function Quest73330:OnSubStart7333009(arg1)
    print("OnSubStart7333009")
end

function Quest73330:OnSubFinish7333009(arg1)
    print("OnSubFinish7333009")
end

function Quest73330:OnSubStart7333010(arg1)
    print("OnSubStart7333010")
end

function Quest73330:OnSubFinish7333010(arg1)
    print("OnSubFinish7333010")
end

function Quest73330:OnSubStart7333011(arg1)
    print("OnSubStart7333011")
    actorMgr:CreateActorWithPos("Q7333011Trigger", "Actor/Gadget/Q7333011Trigger", 70900002, 0, {x = 831.799, y = 336.834, z = 6494.362}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73330:OnSubFinish7333011(arg1)
    print("OnSubFinish7333011")
    this:NarratorOnlyTaskByData(datas.NarratorWithId11)
end

function Quest73330:OnSubStart7333012(arg1)
    print("OnSubStart7333012")
    actorMgr:CreateActorWithPos("Q7333012Trigger", "Actor/Gadget/Q7333012Trigger", 70900002, 0, {x = 727.82, y = 339.858, z = 6366.613}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest73330:OnSubFinish7333012(arg1)
    print("OnSubFinish7333012")
    this:CallDelay(3, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId12)
    end)
end

function Quest73330:OnSubStart7333013(arg1)
    print("OnSubStart7333013")
end

function Quest73330:OnSubFinish7333013(arg1)
    print("OnSubFinish7333013")
    this:NarratorOnlyTaskByData(datas.NarratorWithId13)
end

function Quest73330:OnSubStart7333004(arg1)
    print("OnSubStart7333004")
    actorMgr:CreateActorWithPos("Q7333004Trigger", "Actor/Gadget/Q7333004Trigger", 70900002, 0, points.TPos_Q7333004Trigger.pos, points.TPos_Q7333004Trigger.rot, true, false, 3)
end

function Quest73330:OnSubFinish7333004(arg1)
    print("OnSubFinish7333004")
end

function Quest73330:OnSubStart7333006(arg1)
    print("OnSubStart7333006")
    this:NpcCreateWithTrigger(npcs.Npc20966Data.id, 7333006, 1)
    actorMgr:CreateActorWithPos("Q7333006Trigger", "Actor/Gadget/Q7333006Trigger", 70900002, 0, {x = 656.57, y = 297.091, z = 6222.53}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73330:OnSubFinish7333006(arg1)
    print("OnSubFinish7333006")
    this:NarratorOnlyTaskByData(datas.NarratorWithId06)
end

function Quest73330:OnSubStart7333007(arg1)
    print("OnSubStart7333007")
end

function Quest73330:OnSubFinish7333007(arg1)
    print("OnSubFinish7333007")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc20966Data.alias)
end

function Quest73330:OnSubStart7333008(arg1)
    print("OnSubStart7333008")
end

function Quest73330:OnSubFinish7333008(arg1)
    print("OnSubFinish7333008")
end

function Quest73330:OnSubStart7333005(arg1)
    print("OnSubStart7333005")
    actorMgr:CreateActorWithPos("Q7333005Trigger", "Actor/Gadget/Q7333005Trigger", 70900002, 0, {x = 681.398, y = 307.617, z = 6254.926}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73330:OnSubFinish7333005(arg1)
    print("OnSubFinish7333005")
    this:NarratorOnlyTaskByData(datas.NarratorWithId05)
end

function Quest73330:OnSubStart7333003(arg1)
    print("OnSubStart7333003")
end

function Quest73330:OnSubFinish7333003(arg1)
    print("OnSubFinish7333003")
end

return Quest73330
