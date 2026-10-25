require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73296 = class("Quest73296", QuestActorProxy)
Quest73296.defaultAlias = "Quest73296"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73296:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73296:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7329601"] = self.OnSubStart7329601,
        ["7329602"] = self.OnSubStart7329602,
        ["7329603"] = self.OnSubStart7329603,
        ["7329604"] = self.OnSubStart7329604,
        ["7329612"] = self.OnSubStart7329612,
        ["7329609"] = self.OnSubStart7329609,
        ["7329605"] = self.OnSubStart7329605,
        ["7329613"] = self.OnSubStart7329613,
        ["7329611"] = self.OnSubStart7329611,
        ["7329607"] = self.OnSubStart7329607,
        ["7329608"] = self.OnSubStart7329608,
        ["7329610"] = self.OnSubStart7329610,
        ["7329606"] = self.OnSubStart7329606
    }
end

function Quest73296:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7329601"] = self.OnSubFinish7329601,
        ["7329602"] = self.OnSubFinish7329602,
        ["7329603"] = self.OnSubFinish7329603,
        ["7329604"] = self.OnSubFinish7329604,
        ["7329612"] = self.OnSubFinish7329612,
        ["7329609"] = self.OnSubFinish7329609,
        ["7329605"] = self.OnSubFinish7329605,
        ["7329613"] = self.OnSubFinish7329613,
        ["7329611"] = self.OnSubFinish7329611,
        ["7329607"] = self.OnSubFinish7329607,
        ["7329608"] = self.OnSubFinish7329608,
        ["7329610"] = self.OnSubFinish7329610,
        ["7329606"] = self.OnSubFinish7329606
    }
end

function Quest73296:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7329605"] = self.OnSubFailed7329605}
end

function Quest73296:Start()
    print("Start")
end

function Quest73296:OnDestroy()
    print("OnDestroy")
end

function Quest73296:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73296:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73296:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73296:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest73296:Count_down()
    print("Count_down")
    self:FinishQuestID(false, 7329609)
end

function Quest73296:Enale_input()
    print("Enale_input")
    this:EnablePlayerInput(true)
end

function Quest73296:OnSubStart7329601(arg1)
    print("OnSubStart7329601")
    this:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73296:OnSubFinish7329601(arg1)
    print("OnSubFinish7329601")
end

function Quest73296:OnSubStart7329602(arg1)
    print("OnSubStart7329602")
    if this:GetQuestVar(7329601, 1) == 0 then
        this:ActionSafeCall(function(arg1)
            this:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73296)
        end)

        this:SetQuestVarByMainId(1, 1)
    end
end

function Quest73296:OnSubFinish7329602(arg1)
    print("OnSubFinish7329602")
    this:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73296:OnSubStart7329603(arg1)
    print("OnSubStart7329603")
    actorMgr:CreateActorWithPos("Q73296Trigger", "Actor/Gadget/Q73296Trigger", 70900002, 0, points.TPos_Q73296Trigger.pos, points.TPos_Q73296Trigger.rot, true, false, 3)
end

function Quest73296:OnSubFinish7329603(arg1)
    print("OnSubFinish7329603")
end

function Quest73296:OnSubStart7329604(arg1)
    print("OnSubStart7329604")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20930Data.id, 7329604, 1, 10, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73296:OnSubFinish7329604(arg1)
    print("OnSubFinish7329604")
end

function Quest73296:OnSubStart7329612(arg1)
    print("OnSubStart7329612")
end

function Quest73296:OnSubFinish7329612(arg1)
    print("OnSubFinish7329612")
    this:ShowBlackScreenWithDialogText(0.3, 1, 0.3, nil, nil, nil, 0, false, true)
    this:TransmitPlayerById(arg1, 1)
    this:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73296:OnSubStart7329609(arg1)
    print("OnSubStart7329609")
    this:CallDelay(4, self.Enale_input)
    this:EnablePlayerInput(false)
    this:CountDownUIStart(0, 0, 3)
    this:CallDelay(4, self.Count_down)
end

function Quest73296:OnSubFinish7329609(arg1)
    print("OnSubFinish7329609")
end

function Quest73296:OnSubStart7329605(arg1)
    print("OnSubStart7329605")
end

function Quest73296:OnSubFinish7329605(arg1)
    print("OnSubFinish7329605")
end

function Quest73296:OnSubFailed7329605(arg1)
    print("OnSubFailed7329605")
    this:CallDelay(3, function(arg1_2)
        this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 3, nil, nil)
    end)
end

function Quest73296:OnSubStart7329613(arg1)
    print("OnSubStart7329613")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20930Data.id, 7329613, 1, 10, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
    this:RequestInteraction("20930")
end

function Quest73296:OnSubFinish7329613(arg1)
    print("OnSubFinish7329613")
    this:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73296:OnSubStart7329611(arg1)
    print("OnSubStart7329611")
    actorMgr:CreateActorWithPos("Q73296Trigger3", "Actor/Gadget/Q73296Trigger3", 70900002, 0, points.TPos_Q73296Trigger3.pos, points.TPos_Q73296Trigger3.rot, true, false, 3)
end

function Quest73296:OnSubFinish7329611(arg1)
    print("OnSubFinish7329611")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId_01, nil, 73296)
    end)
end

function Quest73296:OnSubStart7329607(arg1)
    print("OnSubStart7329607")
end

function Quest73296:OnSubFinish7329607(arg1)
    print("OnSubFinish7329607")
end

function Quest73296:OnSubStart7329608(arg1)
    print("OnSubStart7329608")
    this:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
    this:RequestInteraction(npcs.Npc20930Data.alias)
end

function Quest73296:OnSubFinish7329608(arg1)
    print("OnSubFinish7329608")
    this:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73296:OnSubStart7329610(arg1)
    print("OnSubStart7329610")
    actorMgr:CreateActorWithPos("Q73296Trigger2", "Actor/Gadget/Q73296Trigger2", 70900002, 0, {x = 526.279, y = 309.62, z = 5542.025}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73296:OnSubFinish7329610(arg1)
    print("OnSubFinish7329610")
end

function Quest73296:OnSubStart7329606(arg1)
    print("OnSubStart7329606")
end

function Quest73296:OnSubFinish7329606(arg1)
    print("OnSubFinish7329606")
end

return Quest73296
