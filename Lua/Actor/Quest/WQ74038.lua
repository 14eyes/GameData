require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74038 = class("Quest74038", QuestActorProxy)
Quest74038.defaultAlias = "Quest74038"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74038:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74038:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7403801"] = self.OnSubStart7403801,
        ["7403803"] = self.OnSubStart7403803,
        ["7403804"] = self.OnSubStart7403804,
        ["7403818"] = self.OnSubStart7403818,
        ["7403805"] = self.OnSubStart7403805,
        ["7403806"] = self.OnSubStart7403806,
        ["7403809"] = self.OnSubStart7403809,
        ["7403810"] = self.OnSubStart7403810,
        ["7403811"] = self.OnSubStart7403811,
        ["7403812"] = self.OnSubStart7403812,
        ["7403813"] = self.OnSubStart7403813,
        ["7403802"] = self.OnSubStart7403802,
        ["7403814"] = self.OnSubStart7403814,
        ["7403807"] = self.OnSubStart7403807,
        ["7403815"] = self.OnSubStart7403815,
        ["7403816"] = self.OnSubStart7403816,
        ["7403817"] = self.OnSubStart7403817,
        ["7403808"] = self.OnSubStart7403808
    }
end

function Quest74038:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7403801"] = self.OnSubFinish7403801,
        ["7403803"] = self.OnSubFinish7403803,
        ["7403804"] = self.OnSubFinish7403804,
        ["7403818"] = self.OnSubFinish7403818,
        ["7403805"] = self.OnSubFinish7403805,
        ["7403806"] = self.OnSubFinish7403806,
        ["7403809"] = self.OnSubFinish7403809,
        ["7403810"] = self.OnSubFinish7403810,
        ["7403811"] = self.OnSubFinish7403811,
        ["7403812"] = self.OnSubFinish7403812,
        ["7403813"] = self.OnSubFinish7403813,
        ["7403802"] = self.OnSubFinish7403802,
        ["7403814"] = self.OnSubFinish7403814,
        ["7403807"] = self.OnSubFinish7403807,
        ["7403815"] = self.OnSubFinish7403815,
        ["7403816"] = self.OnSubFinish7403816,
        ["7403817"] = self.OnSubFinish7403817,
        ["7403808"] = self.OnSubFinish7403808
    }
end

function Quest74038:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74038:Start()
    print("Start")
end

function Quest74038:OnDestroy()
    print("OnDestroy")
end

function Quest74038:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74038:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74038:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74038:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74038:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7403818)
    end
end

function Quest74038:OnSubStart7403801(arg1)
    print("OnSubStart7403801")
    this:CreateQuestNpc(arg1, npcs.Npc5305Data.id, 0)
end

function Quest74038:OnSubFinish7403801(arg1)
    print("OnSubFinish7403801")
end

function Quest74038:OnSubStart7403803(arg1)
    print("OnSubStart7403803")
    this:CreateQuestNpc(arg1, npcs.Npc5323Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21054Data.id, 0)
end

function Quest74038:OnSubFinish7403803(arg1)
    print("OnSubFinish7403803")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5323Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5305Data.alias, 3)
end

function Quest74038:OnSubStart7403804(arg1)
    print("OnSubStart7403804")
    this:CreateQuestNpcWithTriggerBlackEx("7403804npctrigger", 7403804, 5323, 1, 15, 0.5, 1, 0.5, 1)
end

function Quest74038:OnSubFinish7403804(arg1)
    print("OnSubFinish7403804")
end

function Quest74038:OnSubStart7403818(arg1)
    print("OnSubStart7403818")
end

function Quest74038:OnSubFinish7403818(arg1)
    print("OnSubFinish7403818")
end

function Quest74038:OnSubStart7403805(arg1)
    print("OnSubStart7403805")
end

function Quest74038:OnSubFinish7403805(arg1)
    print("OnSubFinish7403805")
end

function Quest74038:OnSubStart7403806(arg1)
    print("OnSubStart7403806")
    this:CreateQuestNpcWithTriggerBlackEx("7403806npctrigger", 7403806, 5323, 1, 20, 0.5, 1, 0.5, 1)
end

function Quest74038:OnSubFinish7403806(arg1)
    print("OnSubFinish7403806")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5323Data.alias)
end

function Quest74038:OnSubStart7403809(arg1)
    print("OnSubStart7403809")
end

function Quest74038:OnSubFinish7403809(arg1)
    print("OnSubFinish7403809")
end

function Quest74038:OnSubStart7403810(arg1)
    print("OnSubStart7403810")
end

function Quest74038:OnSubFinish7403810(arg1)
    print("OnSubFinish7403810")
    this:NarratorOnlyTaskByData(datas.paim_7403810)
end

function Quest74038:OnSubStart7403811(arg1)
    print("OnSubStart7403811")
    this:CreateQuestNpcWithTriggerBlackEx("7403811npctrigger", 7403811, 21053, 1, 10, 0.5, 1, 0.5, 1)
end

function Quest74038:OnSubFinish7403811(arg1)
    print("OnSubFinish7403811")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21053Data.alias)
end

function Quest74038:OnSubStart7403812(arg1)
    print("OnSubStart7403812")
    this:CreateQuestNpc(arg1, npcs.Npc5323Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21083Data.id, 0)
    this:CreateQuestNpcWithTriggerBlackEx("7403812npctrigger", 7403812, 21083, 2, 5, 0.5, 1, 0.5, 1)
end

function Quest74038:OnSubFinish7403812(arg1)
    print("OnSubFinish7403812")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21083Data.alias)
end

function Quest74038:OnSubStart7403813(arg1)
    print("OnSubStart7403813")
    this:CreateQuestNpc(arg1, npcs.Npc5323Data.id, 0)
    this:CreateQuestNpcWithTriggerBlackEx("7403813npctrigger", 7403813, 5323, 1, 15, 0.5, 1, 0.5, 1)
end

function Quest74038:OnSubFinish7403813(arg1)
    print("OnSubFinish7403813")
    this:TransmitPlayerByQuestId(7403813, 1)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5323Data.alias)
end

function Quest74038:OnSubStart7403802(arg1)
    print("OnSubStart7403802")
    this:CreateQuestNpcWithTriggerBlackEx("7403802npctrigger", 7403802, 5323, 1, 15, 0.5, 1, 0.5, 1)
end

function Quest74038:OnSubFinish7403802(arg1)
    print("OnSubFinish7403802")
end

function Quest74038:OnSubStart7403814(arg1)
    print("OnSubStart7403814")
    this:CreateQuestNpc(arg1, npcs.Npc5323Data.id, 0)
end

function Quest74038:OnSubFinish7403814(arg1)
    print("OnSubFinish7403814")
end

function Quest74038:OnSubStart7403807(arg1)
    print("OnSubStart7403807")
end

function Quest74038:OnSubFinish7403807(arg1)
    print("OnSubFinish7403807")
    this:NarratorOnlyTaskByData(datas.paim_7403897, function(arg1)
        actorUtils.FinishQuestID(false, 7403814)
    end)
end

function Quest74038:OnSubStart7403815(arg1)
    print("OnSubStart7403815")
end

function Quest74038:OnSubFinish7403815(arg1)
    print("OnSubFinish7403815")
    this:NarratorOnlyTaskByData(datas.paim_7403898)
end

function Quest74038:OnSubStart7403816(arg1)
    print("OnSubStart7403816")
end

function Quest74038:OnSubFinish7403816(arg1)
    print("OnSubFinish7403816")
end

function Quest74038:OnSubStart7403817(arg1)
    print("OnSubStart7403817")
    this:CreateQuestNpcWithTriggerBlackEx("7403817npctrigger", 7403817, 5323, 1, 30, 0.5, 1, 0.5, 1)
end

function Quest74038:OnSubFinish7403817(arg1)
    print("OnSubFinish7403817")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5323Data.alias)
end

function Quest74038:OnSubStart7403808(arg1)
    print("OnSubStart7403808")
end

function Quest74038:OnSubFinish7403808(arg1)
    print("OnSubFinish7403808")
end

return Quest74038
