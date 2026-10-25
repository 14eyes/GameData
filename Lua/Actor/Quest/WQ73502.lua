require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73502 = class("Quest73502", QuestActorProxy)
Quest73502.defaultAlias = "Quest73502"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73502:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73502:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7350201"] = self.OnSubStart7350201,
        ["7350207"] = self.OnSubStart7350207,
        ["7350208"] = self.OnSubStart7350208,
        ["7350209"] = self.OnSubStart7350209,
        ["7350210"] = self.OnSubStart7350210,
        ["7350204"] = self.OnSubStart7350204,
        ["7350205"] = self.OnSubStart7350205,
        ["7350202"] = self.OnSubStart7350202,
        ["7350206"] = self.OnSubStart7350206,
        ["7350203"] = self.OnSubStart7350203
    }
end

function Quest73502:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7350201"] = self.OnSubFinish7350201,
        ["7350207"] = self.OnSubFinish7350207,
        ["7350208"] = self.OnSubFinish7350208,
        ["7350209"] = self.OnSubFinish7350209,
        ["7350210"] = self.OnSubFinish7350210,
        ["7350204"] = self.OnSubFinish7350204,
        ["7350205"] = self.OnSubFinish7350205,
        ["7350202"] = self.OnSubFinish7350202,
        ["7350206"] = self.OnSubFinish7350206,
        ["7350203"] = self.OnSubFinish7350203
    }
end

function Quest73502:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7350203"] = self.OnSubFailed7350203}
end

function Quest73502:Start()
    print("Start")
end

function Quest73502:OnDestroy()
    print("OnDestroy")
end

function Quest73502:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73502:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73502:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73502:OnSubStart7350201(arg1)
    print("OnSubStart7350201")
    self:CreateQuestNpc(arg1, npcs.Npc20834Data.id, 1)
end

function Quest73502:OnSubFinish7350201(arg1)
    print("OnSubFinish7350201")
end

function Quest73502:OnSubStart7350207(arg1)
    print("OnSubStart7350207")
end

function Quest73502:OnSubFinish7350207(arg1)
    print("OnSubFinish7350207")
end

function Quest73502:OnSubStart7350208(arg1)
    print("OnSubStart7350208")
end

function Quest73502:OnSubFinish7350208(arg1)
    print("OnSubFinish7350208")
end

function Quest73502:OnSubStart7350209(arg1)
    print("OnSubStart7350209")
end

function Quest73502:OnSubFinish7350209(arg1)
    print("OnSubFinish7350209")
end

function Quest73502:OnSubStart7350210(arg1)
    print("OnSubStart7350210")
end

function Quest73502:OnSubFinish7350210(arg1)
    print("OnSubFinish7350210")
end

function Quest73502:OnSubStart7350204(arg1)
    print("OnSubStart7350204")
end

function Quest73502:OnSubFinish7350204(arg1)
    print("OnSubFinish7350204")
end

function Quest73502:OnSubStart7350205(arg1)
    print("OnSubStart7350205")
end

function Quest73502:OnSubFinish7350205(arg1)
    print("OnSubFinish7350205")
end

function Quest73502:OnSubStart7350202(arg1)
    print("OnSubStart7350202")
end

function Quest73502:OnSubFinish7350202(arg1)
    print("OnSubFinish7350202")
end

function Quest73502:OnSubStart7350206(arg1)
    print("OnSubStart7350206")
end

function Quest73502:OnSubFinish7350206(arg1)
    print("OnSubFinish7350206")
end

function Quest73502:OnSubStart7350203(arg1)
    print("OnSubStart7350203")
    self:CreateQuestNpc(arg1, npcs.Npc20847Data.id, 1)
end

function Quest73502:OnSubFinish7350203(arg1)
    print("OnSubFinish7350203")
    self:SafeDestroyQuestNpc(npcs.Npc20834Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20847Data.alias, 3)
end

function Quest73502:OnSubFailed7350203(arg1)
    print("OnSubFailed7350203")
    self:GetQuestNpcActor(npcs.Npc20847Data.alias):DestroyWithDither(false, 2)
    self:CallDelay(2, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc20847Data.alias, 3)
    end)
end

return Quest73502
