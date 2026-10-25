require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75011 = class("Quest75011", QuestActorProxy)
Quest75011.defaultAlias = "Quest75011"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75011:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7501105"] = self.OnSubStart7501105,
        ["7501101"] = self.OnSubStart7501101,
        ["7501103"] = self.OnSubStart7501103,
        ["7501107"] = self.OnSubStart7501107,
        ["7501118"] = self.OnSubStart7501118,
        ["7501109"] = self.OnSubStart7501109,
        ["7501120"] = self.OnSubStart7501120,
        ["7501102"] = self.OnSubStart7501102,
        ["7501104"] = self.OnSubStart7501104,
        ["7501106"] = self.OnSubStart7501106,
        ["7501110"] = self.OnSubStart7501110,
        ["7501123"] = self.OnSubStart7501123,
        ["7501124"] = self.OnSubStart7501124,
        ["7501121"] = self.OnSubStart7501121,
        ["7501113"] = self.OnSubStart7501113,
        ["7501114"] = self.OnSubStart7501114,
        ["7501112"] = self.OnSubStart7501112,
        ["7501116"] = self.OnSubStart7501116,
        ["7501108"] = self.OnSubStart7501108,
        ["7501117"] = self.OnSubStart7501117,
        ["7501115"] = self.OnSubStart7501115,
        ["7501119"] = self.OnSubStart7501119,
        ["7501122"] = self.OnSubStart7501122,
        ["7501111"] = self.OnSubStart7501111
    }
end

function Quest75011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7501105"] = self.OnSubFinish7501105,
        ["7501101"] = self.OnSubFinish7501101,
        ["7501103"] = self.OnSubFinish7501103,
        ["7501107"] = self.OnSubFinish7501107,
        ["7501118"] = self.OnSubFinish7501118,
        ["7501109"] = self.OnSubFinish7501109,
        ["7501120"] = self.OnSubFinish7501120,
        ["7501102"] = self.OnSubFinish7501102,
        ["7501104"] = self.OnSubFinish7501104,
        ["7501106"] = self.OnSubFinish7501106,
        ["7501110"] = self.OnSubFinish7501110,
        ["7501123"] = self.OnSubFinish7501123,
        ["7501124"] = self.OnSubFinish7501124,
        ["7501121"] = self.OnSubFinish7501121,
        ["7501113"] = self.OnSubFinish7501113,
        ["7501114"] = self.OnSubFinish7501114,
        ["7501112"] = self.OnSubFinish7501112,
        ["7501116"] = self.OnSubFinish7501116,
        ["7501108"] = self.OnSubFinish7501108,
        ["7501117"] = self.OnSubFinish7501117,
        ["7501115"] = self.OnSubFinish7501115,
        ["7501119"] = self.OnSubFinish7501119,
        ["7501122"] = self.OnSubFinish7501122,
        ["7501111"] = self.OnSubFinish7501111
    }
end

function Quest75011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75011:Start()
    print("Start")
end

function Quest75011:OnDestroy()
    print("OnDestroy")
end

function Quest75011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75011:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75011:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75011:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest75011:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7501108)
    end
end

function Quest75011:OnSubStart7501105(arg1)
    print("OnSubStart7501105")
    actorMgr:CreateActorWithPos("Q7501105_Trigger", "Actor/Gadget/Q7501105_Trigger", 70900002, 0, {x = -2695.334, y = 233.928, z = 8559.35}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75011:OnSubFinish7501105(arg1)
    print("OnSubFinish7501105")
end

function Quest75011:OnSubStart7501101(arg1)
    print("OnSubStart7501101")
    actorMgr:CreateActorWithPos("Q7501101_EnterTrigger", "Actor/Gadget/Q7501101_EnterTrigger", 70900002, 0, {x = -3026.243, y = 379.323, z = 8533.108}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7501101_N", "Actor/Gadget/Q7501101_N", 70900002, 0, {x = -2710.365, y = 263.804, z = 8597.342}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75011:OnSubFinish7501101(arg1)
    print("OnSubFinish7501101")
    this:ActorDestroy("Q7501101_N")
end

function Quest75011:OnSubStart7501103(arg1)
    print("OnSubStart7501103")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21474Data.id, 7501103, 1, 30, 1, false)
end

function Quest75011:OnSubFinish7501103(arg1)
    print("OnSubFinish7501103")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21474Data.alias)
end

function Quest75011:OnSubStart7501107(arg1)
    print("OnSubStart7501107")
    actorMgr:CreateActorWithPos("Q7501107_EnterTrigger", "Actor/Gadget/Q7501107_EnterTrigger", 70900002, 0, {x = -2996.823, y = 383.946, z = 8426.048}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75011:OnSubFinish7501107(arg1)
    print("OnSubFinish7501107")
end

function Quest75011:OnSubStart7501118(arg1)
    print("OnSubStart7501118")
end

function Quest75011:OnSubFinish7501118(arg1)
    print("OnSubFinish7501118")
end

function Quest75011:OnSubStart7501109(arg1)
    print("OnSubStart7501109")
    actorMgr:CreateActorWithPos("Q7501109_EnterTrigger", "Actor/Gadget/Q7501109_EnterTrigger", 70900002, 0, {x = -2850.498, y = 406.228, z = 8348.006}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75011:OnSubFinish7501109(arg1)
    print("OnSubFinish7501109")
end

function Quest75011:OnSubStart7501120(arg1)
    print("OnSubStart7501120")
end

function Quest75011:OnSubFinish7501120(arg1)
    print("OnSubFinish7501120")
end

function Quest75011:OnSubStart7501102(arg1)
    print("OnSubStart7501102")
    actorMgr:CreateActorWithPos("Q7501102_EnterTrigger", "Actor/Gadget/Q7501102_EnterTrigger", 70900002, 0, {x = -2776.676, y = 425.155, z = 8368.968}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75011:OnSubFinish7501102(arg1)
    print("OnSubFinish7501102")
end

function Quest75011:OnSubStart7501104(arg1)
    print("OnSubStart7501104")
    actorMgr:CreateActorWithPos("Q7501104_EnterTrigger", "Actor/Gadget/Q7501104_EnterTrigger", 70900002, 0, {x = -2739.988, y = 432.071, z = 8416.06}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75011:OnSubFinish7501104(arg1)
    print("OnSubFinish7501104")
end

function Quest75011:OnSubStart7501106(arg1)
    print("OnSubStart7501106")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21474Data.id, 7501106, 1, 30, 1, false)
end

function Quest75011:OnSubFinish7501106(arg1)
    print("OnSubFinish7501106")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21474Data.alias)
end

function Quest75011:OnSubStart7501110(arg1)
    print("OnSubStart7501110")
    actorMgr:CreateActorWithPos("Q7501123Trigger", "Actor/Gadget/Q7501123Trigger", 70900002, 0, {x = -2741.392, y = 438.434, z = 8433.298}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75011:OnSubFinish7501110(arg1)
    print("OnSubFinish7501110")
end

function Quest75011:OnSubStart7501123(arg1)
    print("OnSubStart7501123")
end

function Quest75011:OnSubFinish7501123(arg1)
    print("OnSubFinish7501123")
end

function Quest75011:OnSubStart7501124(arg1)
    print("OnSubStart7501124")
end

function Quest75011:OnSubFinish7501124(arg1)
    print("OnSubFinish7501124")
end

function Quest75011:OnSubStart7501121(arg1)
    print("OnSubStart7501121")
    actorMgr:CreateActorWithPos("Q7501121_EnterTrigger", "Actor/Gadget/Q7501121_EnterTrigger", 70900002, 0, {x = -3045.775, y = 358.367, z = 8530.432}, {x = 0.0, y = 27.43, z = 0.0}, true, false)
end

function Quest75011:OnSubFinish7501121(arg1)
    print("OnSubFinish7501121")
    actorUtils.FinishQuestID(false, 7501110)
    this:ActorDestroy("Q7501123Trigger")
end

function Quest75011:OnSubStart7501113(arg1)
    print("OnSubStart7501113")
    actorMgr:CreateActorWithPos("Q7501113_EnterTrigger", "Actor/Gadget/Q7501113_EnterTrigger", 70900002, 0, {x = -2698.885, y = 412.621, z = 8551.022}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75011:OnSubFinish7501113(arg1)
    print("OnSubFinish7501113")
end

function Quest75011:OnSubStart7501114(arg1)
    print("OnSubStart7501114")
    actorMgr:CreateActorWithPos("Q7501114_EnterTrigger", "Actor/Gadget/Q7501114_EnterTrigger", 70900002, 0, {x = -2691.628, y = 412.621, z = 8550.161}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75011:OnSubFinish7501114(arg1)
    print("OnSubFinish7501114")
end

function Quest75011:OnSubStart7501112(arg1)
    print("OnSubStart7501112")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21474Data.id, 7501112, 1, 30, 1, false)
end

function Quest75011:OnSubFinish7501112(arg1)
    print("OnSubFinish7501112")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21474Data.alias)
    this:CallDelayByQuest("", 1, function(arg1)
        this:QuestNarratorTask(datas.N7501103)
    end)
end

function Quest75011:OnSubStart7501116(arg1)
    print("OnSubStart7501116")
end

function Quest75011:OnSubFinish7501116(arg1)
    print("OnSubFinish7501116")
end

function Quest75011:OnSubStart7501108(arg1)
    print("OnSubStart7501108")
end

function Quest75011:OnSubFinish7501108(arg1)
    print("OnSubFinish7501108")
end

function Quest75011:OnSubStart7501117(arg1)
    print("OnSubStart7501117")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21474Data.id, 7501117, 1, 30, 1, false)
end

function Quest75011:OnSubFinish7501117(arg1)
    print("OnSubFinish7501117")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21474Data.alias)
end

function Quest75011:OnSubStart7501115(arg1)
    print("OnSubStart7501115")
end

function Quest75011:OnSubFinish7501115(arg1)
    print("OnSubFinish7501115")
end

function Quest75011:OnSubStart7501119(arg1)
    print("OnSubStart7501119")
end

function Quest75011:OnSubFinish7501119(arg1)
    print("OnSubFinish7501119")
end

function Quest75011:OnSubStart7501122(arg1)
    print("OnSubStart7501122")
end

function Quest75011:OnSubFinish7501122(arg1)
    print("OnSubFinish7501122")
end

function Quest75011:OnSubStart7501111(arg1)
    print("OnSubStart7501111")
end

function Quest75011:OnSubFinish7501111(arg1)
    print("OnSubFinish7501111")
end

return Quest75011
