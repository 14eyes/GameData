require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73294 = class("Quest73294", QuestActorProxy)
Quest73294.defaultAlias = "Quest73294"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73294:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73294:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7329401"] = self.OnSubStart7329401,
        ["7329404"] = self.OnSubStart7329404,
        ["7329405"] = self.OnSubStart7329405,
        ["7329408"] = self.OnSubStart7329408,
        ["7329406"] = self.OnSubStart7329406,
        ["7329407"] = self.OnSubStart7329407,
        ["7329409"] = self.OnSubStart7329409,
        ["7329410"] = self.OnSubStart7329410,
        ["7329411"] = self.OnSubStart7329411,
        ["7329413"] = self.OnSubStart7329413,
        ["7329412"] = self.OnSubStart7329412,
        ["7329402"] = self.OnSubStart7329402,
        ["7329403"] = self.OnSubStart7329403
    }
end

function Quest73294:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7329401"] = self.OnSubFinish7329401,
        ["7329404"] = self.OnSubFinish7329404,
        ["7329405"] = self.OnSubFinish7329405,
        ["7329408"] = self.OnSubFinish7329408,
        ["7329406"] = self.OnSubFinish7329406,
        ["7329407"] = self.OnSubFinish7329407,
        ["7329409"] = self.OnSubFinish7329409,
        ["7329410"] = self.OnSubFinish7329410,
        ["7329411"] = self.OnSubFinish7329411,
        ["7329413"] = self.OnSubFinish7329413,
        ["7329412"] = self.OnSubFinish7329412,
        ["7329402"] = self.OnSubFinish7329402,
        ["7329403"] = self.OnSubFinish7329403
    }
end

function Quest73294:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73294:Start()
    print("Start")
end

function Quest73294:OnDestroy()
    print("OnDestroy")
end

function Quest73294:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73294:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73294:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73294:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest73294:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73294:QuestVarAdd(arg1, arg2, arg3)
    local n = self:GetQuestVar(arg1, arg2) + arg3
    self:SetQuestVar(arg1, arg2, n)
end

function Quest73294:OnSubStart7329401(arg1)
    print("OnSubStart7329401")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc20930Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
    end)
end

function Quest73294:OnSubFinish7329401(arg1)
    print("OnSubFinish7329401")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73294)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
end

function Quest73294:OnSubStart7329404(arg1)
    print("OnSubStart7329404")
    actorMgr:CreateActorWithPos("Q73294Trigger", "Actor/Gadget/Q73294Trigger", 70900002, 0, {x = 1005.976, y = 205.924, z = 6337.504}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73294:OnSubFinish7329404(arg1)
    print("OnSubFinish7329404")
end

function Quest73294:OnSubStart7329405(arg1)
    print("OnSubStart7329405")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20930Data.id, 7329405, 1, 10, 1.5)
end

function Quest73294:OnSubFinish7329405(arg1)
    print("OnSubFinish7329405")
end

function Quest73294:OnSubStart7329408(arg1)
    print("OnSubStart7329408")
end

function Quest73294:OnSubFinish7329408(arg1)
    print("OnSubFinish7329408")
end

function Quest73294:OnSubStart7329406(arg1)
    print("OnSubStart7329406")
end

function Quest73294:OnSubFinish7329406(arg1)
    print("OnSubFinish7329406")
    this:QuestVarAdd(7329406, 0, 1)
    if this:GetQuestVar(7329406, 0) == 1 then
        this:NarratorOnlyTaskByData(datas.NarratorWithId2)
    else
        if this:GetQuestVar(7329406, 0) == 2 then
            this:NarratorOnlyTaskByData(datas.NarratorWithId1)
        end
    end
end

function Quest73294:OnSubStart7329407(arg1)
    print("OnSubStart7329407")
end

function Quest73294:OnSubFinish7329407(arg1)
    print("OnSubFinish7329407")
    this:QuestVarAdd(7329406, 0, 1)
    if this:GetQuestVar(7329406, 0) == 1 then
        this:NarratorOnlyTaskByData(datas.NarratorWithId2)
    else
        if this:GetQuestVar(7329406, 0) == 2 then
            this:NarratorOnlyTaskByData(datas.NarratorWithId1)
        end
    end
end

function Quest73294:OnSubStart7329409(arg1)
    print("OnSubStart7329409")
    this:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 1)
    actorMgr:CreateActorWithPos("Q73294Trigger1", "Actor/Gadget/Q73294Trigger1", 70900002, 0, {x = 1075.755, y = 201.09, z = 6484.091}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73294:OnSubFinish7329409(arg1)
    print("OnSubFinish7329409")
end

function Quest73294:OnSubStart7329410(arg1)
    print("OnSubStart7329410")
end

function Quest73294:OnSubFinish7329410(arg1)
    print("OnSubFinish7329410")
    this:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73294:OnSubStart7329411(arg1)
    print("OnSubStart7329411")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20931Data.id, 1)
end

function Quest73294:OnSubFinish7329411(arg1)
    print("OnSubFinish7329411")
    this:NarratorOnlyTaskByData(datas.NarratorWithId3)
end

function Quest73294:OnSubStart7329413(arg1)
    print("OnSubStart7329413")
end

function Quest73294:OnSubFinish7329413(arg1)
    print("OnSubFinish7329413")
end

function Quest73294:OnSubStart7329412(arg1)
    print("OnSubStart7329412")
end

function Quest73294:OnSubFinish7329412(arg1)
    print("OnSubFinish7329412")
    this:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73294:OnSubStart7329402(arg1)
    print("OnSubStart7329402")
end

function Quest73294:OnSubFinish7329402(arg1)
    print("OnSubFinish7329402")
end

function Quest73294:OnSubStart7329403(arg1)
    print("OnSubStart7329403")
end

function Quest73294:OnSubFinish7329403(arg1)
    print("OnSubFinish7329403")
end

return Quest73294
