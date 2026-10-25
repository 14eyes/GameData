require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75249 = class("Quest75249", QuestActorProxy)
Quest75249.defaultAlias = "Quest75249"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75249:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75249:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7524901"] = self.OnSubStart7524901,
        ["7524902"] = self.OnSubStart7524902,
        ["7524903"] = self.OnSubStart7524903
    }
end

function Quest75249:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7524901"] = self.OnSubFinish7524901,
        ["7524902"] = self.OnSubFinish7524902,
        ["7524903"] = self.OnSubFinish7524903
    }
end

function Quest75249:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75249:Start()
    print("Start")
end

function Quest75249:OnDestroy()
    print("OnDestroy")
end

function Quest75249:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75249:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75249:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75249:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75249:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75249:OnSubStart7524901(arg1)
    print("OnSubStart7524901")
    this:CreateQuestNpc(arg1, npcs.Npc21946.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21946.alias, 75249):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest75249:OnSubFinish7524901(arg1)
    print("OnSubFinish7524901")
end

function Quest75249:OnSubStart7524902(arg1)
    print("OnSubStart7524902")
    this:CreateQuestNpc(arg1, npcs.Npc21946.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21946.alias, 75249):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21947.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21947.alias, 75249):DoFreeStyle(4121, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21947.alias, 75249):DisableInteeHeadCtrl(true)
end

function Quest75249:OnSubFinish7524902(arg1)
    print("OnSubFinish7524902")
end

function Quest75249:OnSubStart7524903(arg1)
    print("OnSubStart7524903")
    this:GetQuestNpcActor(npcs.Npc21946.alias, 75249):DoFreeStyle(1240, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21947.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21947.alias, 75249):DoFreeStyle(1070, true, nil, true, true, false, false)
end

function Quest75249:OnSubFinish7524903(arg1)
    print("OnSubFinish7524903")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21946.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21947.alias)
end

return Quest75249
