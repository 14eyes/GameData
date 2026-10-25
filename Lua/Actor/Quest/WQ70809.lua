require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70809 = class("Quest70809", QuestActorProxy)
Quest70809.defaultAlias = "Quest70809"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest70809:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest70809:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7080901"] = self.OnSubStart7080901,
        ["7080904"] = self.OnSubStart7080904,
        ["7080902"] = self.OnSubStart7080902,
        ["7080903"] = self.OnSubStart7080903,
        ["7080907"] = self.OnSubStart7080907,
        ["7080906"] = self.OnSubStart7080906,
        ["7080905"] = self.OnSubStart7080905
    }
end

function Quest70809:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7080901"] = self.OnSubFinish7080901,
        ["7080904"] = self.OnSubFinish7080904,
        ["7080902"] = self.OnSubFinish7080902,
        ["7080903"] = self.OnSubFinish7080903,
        ["7080907"] = self.OnSubFinish7080907,
        ["7080906"] = self.OnSubFinish7080906,
        ["7080905"] = self.OnSubFinish7080905
    }
end

function Quest70809:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7080902"] = self.OnSubFailed7080902, ["7080903"] = self.OnSubFailed7080903}
end

function Quest70809:Start()
    print("Start")
end

function Quest70809:OnDestroy()
    print("OnDestroy")
end

function Quest70809:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70809:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70809:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70809:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest70809:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest70809:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70809:OnSubStart7080901(arg1)
    print("OnSubStart7080901")
end

function Quest70809:OnSubFinish7080901(arg1)
    print("OnSubFinish7080901")
    this:QuestNarratorTask(datas.NarratorWithId_7080999, nil)
end

function Quest70809:OnSubStart7080904(arg1)
    print("OnSubStart7080904")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7080904, 0, 2, 0.5, npcs.Npc1827_1.id)
end

function Quest70809:OnSubFinish7080904(arg1)
    print("OnSubFinish7080904")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1827_1.alias)
    this:ClearNarratorTask()
end

function Quest70809:OnSubStart7080902(arg1)
    print("OnSubStart7080902")
end

function Quest70809:OnSubFinish7080902(arg1)
    print("OnSubFinish7080902")
end

function Quest70809:OnSubFailed7080902(arg1)
    print("OnSubFailed7080902")
    this:RecycleAllRes()
end

function Quest70809:OnSubStart7080903(arg1)
    print("OnSubStart7080903")
end

function Quest70809:OnSubFinish7080903(arg1)
    print("OnSubFinish7080903")
end

function Quest70809:OnSubFailed7080903(arg1)
    print("OnSubFailed7080903")
    this:RecycleAllRes()
end

function Quest70809:OnSubStart7080907(arg1)
    print("OnSubStart7080907")
end

function Quest70809:OnSubFinish7080907(arg1)
    print("OnSubFinish7080907")
    this:ClearNarratorTask()
end

function Quest70809:OnSubStart7080906(arg1)
    print("OnSubStart7080906")
end

function Quest70809:OnSubFinish7080906(arg1)
    print("OnSubFinish7080906")
    this:ClearNarratorTask()
end

function Quest70809:OnSubStart7080905(arg1)
    print("OnSubStart7080905")
end

function Quest70809:OnSubFinish7080905(arg1)
    print("OnSubFinish7080905")
end

return Quest70809
