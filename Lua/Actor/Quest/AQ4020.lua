require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4020 = class("Quest4020", QuestActorProxy)
Quest4020.defaultAlias = "Quest4020"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local points
local datas

function Quest4020:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4020:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["402001"] = self.OnSubStart402001,
        ["402002"] = self.OnSubStart402002,
        ["402004"] = self.OnSubStart402004,
        ["402005"] = self.OnSubStart402005,
        ["402013"] = self.OnSubStart402013,
        ["402003"] = self.OnSubStart402003,
        ["402006"] = self.OnSubStart402006,
        ["402007"] = self.OnSubStart402007,
        ["402011"] = self.OnSubStart402011,
        ["402008"] = self.OnSubStart402008,
        ["402009"] = self.OnSubStart402009,
        ["402010"] = self.OnSubStart402010,
        ["402012"] = self.OnSubStart402012
    }
end

function Quest4020:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["402001"] = self.OnSubFinish402001,
        ["402002"] = self.OnSubFinish402002,
        ["402004"] = self.OnSubFinish402004,
        ["402005"] = self.OnSubFinish402005,
        ["402013"] = self.OnSubFinish402013,
        ["402003"] = self.OnSubFinish402003,
        ["402006"] = self.OnSubFinish402006,
        ["402007"] = self.OnSubFinish402007,
        ["402011"] = self.OnSubFinish402011,
        ["402008"] = self.OnSubFinish402008,
        ["402009"] = self.OnSubFinish402009,
        ["402010"] = self.OnSubFinish402010,
        ["402012"] = self.OnSubFinish402012
    }
end

function Quest4020:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4020:Start()
    print("Start")
end

function Quest4020:OnDestroy()
    print("OnDestroy")
end

function Quest4020:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4020:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4020:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4020:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest4020:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest4020:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 402003)
    end
end

function Quest4020:OnSubStart402001(arg1)
    print("OnSubStart402001")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1075Data.id, 402001, 0, 10, 1)
end

function Quest4020:OnSubFinish402001(arg1)
    print("OnSubFinish402001")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
end

function Quest4020:OnSubStart402002(arg1)
    print("OnSubStart402002")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 20203)
    this:RemoveLocalGadget(70800938, "2")
    actorMgr:DestroyEntityActor("Q4020Trigger6", 20203, false)
    this:DestroyNpcTrigger("Q402005N1075Trigger")
end

function Quest4020:OnSubFinish402002(arg1)
    print("OnSubFinish402002")
end

function Quest4020:OnSubStart402004(arg1)
    print("OnSubStart402004")
    this:CreateLocalGadget(70800938, "2", {x = 536.33, y = 68.72, z = 387.26}, {x = 0.0, y = 0.0, z = 0.0}, 20203, nil, nil, false)
end

function Quest4020:OnSubFinish402004(arg1)
    print("OnSubFinish402004")
end

function Quest4020:OnSubStart402005(arg1)
    print("OnSubStart402005")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1075Data.id, 402005, 0, 10, 1)
    this:CreateLocalGadget(70800938, "2", {x = 536.33, y = 68.72, z = 387.26}, {x = 0.0, y = 0.0, z = 0.0}, 20203, nil, nil, false)
end

function Quest4020:OnSubFinish402005(arg1)
    print("OnSubFinish402005")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 20203)
end

function Quest4020:OnSubStart402013(arg1)
    print("OnSubStart402013")
    actorMgr:CreateActorWithPos("Q4020Trigger6", "Actor/Gadget/Q4020Trigger6", 70900002, 0, points.TPos_Q4020Trigger6.pos, points.TPos_Q4020Trigger6.rot, true, false, 20203)
    this:CreateLocalGadget(70800938, "2", {x = 536.33, y = 68.72, z = 387.26}, {x = 0.0, y = 0.0, z = 0.0}, 20203, nil, nil, false)
end

function Quest4020:OnSubFinish402013(arg1)
    print("OnSubFinish402013")
    this:TransmitPlayerByQuestId(402013, 1)
end

function Quest4020:OnSubStart402003(arg1)
    print("OnSubStart402003")
end

function Quest4020:OnSubFinish402003(arg1)
    print("OnSubFinish402003")
end

function Quest4020:OnSubStart402006(arg1)
    print("OnSubStart402006")
    this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
    actorMgr:CreateActorWithPos("Q4020Trigger3", "Actor/Gadget/Q4020Trigger3", 70900002, 0, points.TPos_Q4020Trigger3.pos, points.TPos_Q4020Trigger3.rot, true, false, 3)
end

function Quest4020:OnSubFinish402006(arg1)
    print("OnSubFinish402006")
    this:TransmitPlayerByQuestId(402006, 1)
end

function Quest4020:OnSubStart402007(arg1)
    print("OnSubStart402007")
    this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
    actorMgr:CreateActorWithPos("Q4020Trigger4", "Actor/Gadget/Q4020Trigger4", 70900002, 0, points.TPos_Q4020Trigger4.pos, points.TPos_Q4020Trigger4.rot, true, false, 1085)
end

function Quest4020:OnSubFinish402007(arg1)
    print("OnSubFinish402007")
    this:PlayerEnterDungeonPointWithDialogs(1052, 1191, 402007, 1, nil, 0, nil, nil)
end

function Quest4020:OnSubStart402011(arg1)
    print("OnSubStart402011")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 20204)
    actorMgr:DestroyEntityActor("Q4020Trigger5", 20204, false)
    this:UnCallDelayByQuest("402008")
    this:DestroyNpcTrigger("Q402010N1075Trigger")
    this:ClearNarratorTask()
end

function Quest4020:OnSubFinish402011(arg1)
    print("OnSubFinish402011")
end

function Quest4020:OnSubStart402008(arg1)
    print("OnSubStart402008")
    this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
    actorMgr:CreateActorWithPos("Q4020Trigger5", "Actor/Gadget/Q4020Trigger5", 70900002, 0, points.TPos_Q4020Trigger5.pos, points.TPos_Q4020Trigger5.rot, true, false, 20204)
end

function Quest4020:OnSubFinish402008(arg1)
    print("OnSubFinish402008")
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("402008", 3.5, function(arg1)
            this:NarratorOnlyTaskByData(datas.Narrator_402001)
        end)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 20204)
end

function Quest4020:OnSubStart402009(arg1)
    print("OnSubStart402009")
end

function Quest4020:OnSubFinish402009(arg1)
    print("OnSubFinish402009")
end

function Quest4020:OnSubStart402010(arg1)
    print("OnSubStart402010")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1075Data.id, 402010, 0, 10, 1)
end

function Quest4020:OnSubFinish402010(arg1)
    print("OnSubFinish402010")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 20204)
end

function Quest4020:OnSubStart402012(arg1)
    print("OnSubStart402012")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1076Data.id, 402012, 0, 10, 1, true)
end

function Quest4020:OnSubFinish402012(arg1)
    print("OnSubFinish402012")
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 3)
end

return Quest4020
