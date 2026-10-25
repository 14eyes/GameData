require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76076 = class("Quest76076", QuestActorProxy)
Quest76076.defaultAlias = "Quest76076"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76076:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76076:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7607601"] = self.OnSubStart7607601,
        ["7607602"] = self.OnSubStart7607602,
        ["7607603"] = self.OnSubStart7607603,
        ["7607605"] = self.OnSubStart7607605,
        ["7607606"] = self.OnSubStart7607606,
        ["7607607"] = self.OnSubStart7607607,
        ["7607608"] = self.OnSubStart7607608,
        ["7607609"] = self.OnSubStart7607609,
        ["7607610"] = self.OnSubStart7607610,
        ["7607611"] = self.OnSubStart7607611,
        ["7607612"] = self.OnSubStart7607612,
        ["7607604"] = self.OnSubStart7607604
    }
end

function Quest76076:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7607601"] = self.OnSubFinish7607601,
        ["7607602"] = self.OnSubFinish7607602,
        ["7607603"] = self.OnSubFinish7607603,
        ["7607605"] = self.OnSubFinish7607605,
        ["7607606"] = self.OnSubFinish7607606,
        ["7607607"] = self.OnSubFinish7607607,
        ["7607608"] = self.OnSubFinish7607608,
        ["7607609"] = self.OnSubFinish7607609,
        ["7607610"] = self.OnSubFinish7607610,
        ["7607611"] = self.OnSubFinish7607611,
        ["7607612"] = self.OnSubFinish7607612,
        ["7607604"] = self.OnSubFinish7607604
    }
end

function Quest76076:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76076:Start()
    print("Start")
end

function Quest76076:OnDestroy()
    print("OnDestroy")
end

function Quest76076:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76076:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76076:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76076:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest76076:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76076:OnSubStart7607601(arg1)
    print("OnSubStart7607601")
    actorUtils.FinishQuestID(false, 7607601)
end

function Quest76076:OnSubFinish7607601(arg1)
    print("OnSubFinish7607601")
end

function Quest76076:OnSubStart7607602(arg1)
    print("OnSubStart7607602")
end

function Quest76076:OnSubFinish7607602(arg1)
    print("OnSubFinish7607602")
end

function Quest76076:OnSubStart7607603(arg1)
    print("OnSubStart7607603")
end

function Quest76076:OnSubFinish7607603(arg1)
    print("OnSubFinish7607603")
end

function Quest76076:OnSubStart7607605(arg1)
    print("OnSubStart7607605")
end

function Quest76076:OnSubFinish7607605(arg1)
    print("OnSubFinish7607605")
end

function Quest76076:OnSubStart7607606(arg1)
    print("OnSubStart7607606")
end

function Quest76076:OnSubFinish7607606(arg1)
    print("OnSubFinish7607606")
end

function Quest76076:OnSubStart7607607(arg1)
    print("OnSubStart7607607")
end

function Quest76076:OnSubFinish7607607(arg1)
    print("OnSubFinish7607607")
end

function Quest76076:OnSubStart7607608(arg1)
    print("OnSubStart7607608")
end

function Quest76076:OnSubFinish7607608(arg1)
    print("OnSubFinish7607608")
end

function Quest76076:OnSubStart7607609(arg1)
    print("OnSubStart7607609")
end

function Quest76076:OnSubFinish7607609(arg1)
    print("OnSubFinish7607609")
end

function Quest76076:OnSubStart7607610(arg1)
    print("OnSubStart7607610")
end

function Quest76076:OnSubFinish7607610(arg1)
    print("OnSubFinish7607610")
end

function Quest76076:OnSubStart7607611(arg1)
    print("OnSubStart7607611")
end

function Quest76076:OnSubFinish7607611(arg1)
    print("OnSubFinish7607611")
end

function Quest76076:OnSubStart7607612(arg1)
    print("OnSubStart7607612")
end

function Quest76076:OnSubFinish7607612(arg1)
    print("OnSubFinish7607612")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId7607601, nil)
    end)
end

function Quest76076:OnSubStart7607604(arg1)
    print("OnSubStart7607604")
    this:NpcCreateWithNpcTrigger(npcs.Npc1314.id, 0, 8, 7607604)
end

function Quest76076:OnSubFinish7607604(arg1)
    print("OnSubFinish7607604")
    this:SafeDestroyQuestNpc(npcs.Npc1314.alias, 3)
end

return Quest76076
