require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76067 = class("Quest76067", QuestActorProxy)
Quest76067.defaultAlias = "Quest76067"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76067:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76067:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7606701"] = self.OnSubStart7606701,
        ["7606702"] = self.OnSubStart7606702,
        ["7606703"] = self.OnSubStart7606703,
        ["7606705"] = self.OnSubStart7606705,
        ["7606704"] = self.OnSubStart7606704,
        ["7606706"] = self.OnSubStart7606706,
        ["7606707"] = self.OnSubStart7606707
    }
end

function Quest76067:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7606701"] = self.OnSubFinish7606701,
        ["7606702"] = self.OnSubFinish7606702,
        ["7606703"] = self.OnSubFinish7606703,
        ["7606705"] = self.OnSubFinish7606705,
        ["7606704"] = self.OnSubFinish7606704,
        ["7606706"] = self.OnSubFinish7606706,
        ["7606707"] = self.OnSubFinish7606707
    }
end

function Quest76067:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76067:Start()
    print("Start")
end

function Quest76067:OnDestroy()
    print("OnDestroy")
end

function Quest76067:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76067:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76067:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76067:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76067:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76067:OnSubStart7606701(arg1)
    print("OnSubStart7606701")
    this:CreateQuestNpc(arg1, npcs.Npc7615.id, 0, false, 0)
end

function Quest76067:OnSubFinish7606701(arg1)
    print("OnSubFinish7606701")
end

function Quest76067:OnSubStart7606702(arg1)
    print("OnSubStart7606702")
    this:CreateQuestNpc(arg1, npcs.Npc22291.id, 0, false, 0)
end

function Quest76067:OnSubFinish7606702(arg1)
    print("OnSubFinish7606702")
end

function Quest76067:OnSubStart7606703(arg1)
    print("OnSubStart7606703")
end

function Quest76067:OnSubFinish7606703(arg1)
    print("OnSubFinish7606703")
end

function Quest76067:OnSubStart7606705(arg1)
    print("OnSubStart7606705")
end

function Quest76067:OnSubFinish7606705(arg1)
    print("OnSubFinish7606705")
end

function Quest76067:OnSubStart7606704(arg1)
    print("OnSubStart7606704")
    this:CreateQuestNpc(arg1, npcs.Npc7616.id, 0, false, 0)
end

function Quest76067:OnSubFinish7606704(arg1)
    print("OnSubFinish7606704")
    this:SafeDestroyQuestNpc(npcs.Npc7615.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc7616.alias)
end

function Quest76067:OnSubStart7606706(arg1)
    print("OnSubStart7606706")
end

function Quest76067:OnSubFinish7606706(arg1)
    print("OnSubFinish7606706")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22291.alias)
end

function Quest76067:OnSubStart7606707(arg1)
    print("OnSubStart7606707")
    this:CreateQuestNpc(arg1, npcs.Npc22293.id, 0, false, 0)
end

function Quest76067:OnSubFinish7606707(arg1)
    print("OnSubFinish7606707")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22293.alias)
end

return Quest76067
