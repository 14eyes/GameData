require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75064 = class("Quest75064", QuestActorProxy)
Quest75064.defaultAlias = "Quest75064"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75064:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75064:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7506404"] = self.OnSubStart7506404,
        ["7506412"] = self.OnSubStart7506412,
        ["7506409"] = self.OnSubStart7506409,
        ["7506411"] = self.OnSubStart7506411,
        ["7506408"] = self.OnSubStart7506408,
        ["7506410"] = self.OnSubStart7506410,
        ["7506405"] = self.OnSubStart7506405,
        ["7506407"] = self.OnSubStart7506407,
        ["7506406"] = self.OnSubStart7506406
    }
end

function Quest75064:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7506404"] = self.OnSubFinish7506404,
        ["7506412"] = self.OnSubFinish7506412,
        ["7506409"] = self.OnSubFinish7506409,
        ["7506411"] = self.OnSubFinish7506411,
        ["7506408"] = self.OnSubFinish7506408,
        ["7506410"] = self.OnSubFinish7506410,
        ["7506405"] = self.OnSubFinish7506405,
        ["7506407"] = self.OnSubFinish7506407,
        ["7506406"] = self.OnSubFinish7506406
    }
end

function Quest75064:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75064:Start()
    print("Start")
end

function Quest75064:OnDestroy()
    print("OnDestroy")
end

function Quest75064:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75064:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75064:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75064:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest75064:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest75064:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7506409)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7506411)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 7506408)
    end
end

function Quest75064:OnSubStart7506404(arg1)
    print("OnSubStart7506404")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc21586Data.id, 7506404, 0, 15, 1, false)
    actorMgr:CreateActorWithPos("Q7506401Trigger", "Actor/Gadget/Q7506401Trigger", 70900002, 0, {x = -1586.067, y = 178.881, z = 9703.615}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7506401Trigger02", "Actor/Gadget/Q7506401Trigger02", 70900002, 0, {x = -1549.398, y = 210.673, z = 9712.995}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75064:OnSubFinish7506404(arg1)
    print("OnSubFinish7506404")
end

function Quest75064:OnSubStart7506412(arg1)
    print("OnSubStart7506412")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21460Data.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc21586Data.alias, "", true)
end

function Quest75064:OnSubFinish7506412(arg1)
    print("OnSubFinish7506412")
end

function Quest75064:OnSubStart7506409(arg1)
    print("OnSubStart7506409")
end

function Quest75064:OnSubFinish7506409(arg1)
    print("OnSubFinish7506409")
end

function Quest75064:OnSubStart7506411(arg1)
    print("OnSubStart7506411")
end

function Quest75064:OnSubFinish7506411(arg1)
    print("OnSubFinish7506411")
end

function Quest75064:OnSubStart7506408(arg1)
    print("OnSubStart7506408")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21460Data.id, 0, false, 0)
end

function Quest75064:OnSubFinish7506408(arg1)
    print("OnSubFinish7506408")
end

function Quest75064:OnSubStart7506410(arg1)
    print("OnSubStart7506410")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
end

function Quest75064:OnSubFinish7506410(arg1)
    print("OnSubFinish7506410")
end

function Quest75064:OnSubStart7506405(arg1)
    print("OnSubStart7506405")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21460Data.id, 0, false, 0)
end

function Quest75064:OnSubFinish7506405(arg1)
    print("OnSubFinish7506405")
    this:EnterSceneLookCamera({x = -1544.0, y = 254.0, z = 9712.687}, 0, 3, false, false)
    this:CallDelayByQuest("", 6, function(arg1_2)
        this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21586Data.id, 0, npcs.Npc21586Data.alias)
        this:CreateQuestNpc(arg1, npcs.Npc21460Data.id, 0, false, 0)
    end)
end

function Quest75064:OnSubStart7506407(arg1)
    print("OnSubStart7506407")
    this:GetQuestNpcActor(npcs.Npc21586Data.alias):DoFreeStyle(1270, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21460Data.id, 0, false, 0)
end

function Quest75064:OnSubFinish7506407(arg1)
    print("OnSubFinish7506407")
end

function Quest75064:OnSubStart7506406(arg1)
    print("OnSubStart7506406")
    this:CreateQuestNpc(arg1, npcs.Npc21586Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21460Data.id, 0, false, 0)
end

function Quest75064:OnSubFinish7506406(arg1)
    print("OnSubFinish7506406")
    this:SafeDestroyQuestNpc(npcs.Npc21586Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21460Data.alias, 3)
end

return Quest75064
