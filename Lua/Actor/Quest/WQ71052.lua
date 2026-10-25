require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71052 = class("Quest71052", QuestActorProxy)
Quest71052.defaultAlias = "Quest71052"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71052:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71052:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7105201"] = self.OnSubStart7105201,
        ["7105202"] = self.OnSubStart7105202,
        ["7105203"] = self.OnSubStart7105203,
        ["7105204"] = self.OnSubStart7105204,
        ["7105205"] = self.OnSubStart7105205,
        ["7105206"] = self.OnSubStart7105206,
        ["7105207"] = self.OnSubStart7105207,
        ["7105208"] = self.OnSubStart7105208,
        ["7105209"] = self.OnSubStart7105209
    }
end

function Quest71052:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7105201"] = self.OnSubFinish7105201,
        ["7105202"] = self.OnSubFinish7105202,
        ["7105203"] = self.OnSubFinish7105203,
        ["7105204"] = self.OnSubFinish7105204,
        ["7105205"] = self.OnSubFinish7105205,
        ["7105206"] = self.OnSubFinish7105206,
        ["7105207"] = self.OnSubFinish7105207,
        ["7105208"] = self.OnSubFinish7105208,
        ["7105209"] = self.OnSubFinish7105209
    }
end

function Quest71052:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71052:Start()
    print("Start")
end

function Quest71052:OnDestroy()
    print("OnDestroy")
end

function Quest71052:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71052:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71052:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71052:OnSubStart7105201(arg1)
    print("OnSubStart7105201")
    self:CreateQuestNpc(arg1, npcs.Npc20529Data.id, 1)
end

function Quest71052:OnSubFinish7105201(arg1)
    print("OnSubFinish7105201")
    self:SafeDestroyQuestNpc(npcs.Npc20529Data.alias, 6)
end

function Quest71052:OnSubStart7105202(arg1)
    print("OnSubStart7105202")
    self:CreateQuestNpc(arg1, npcs.Npc20530Data.id, 1)
end

function Quest71052:OnSubFinish7105202(arg1)
    print("OnSubFinish7105202")
    self:SafeDestroyQuestNpc(npcs.Npc20530Data.alias, 6)
end

function Quest71052:OnSubStart7105203(arg1)
    print("OnSubStart7105203")
    self:CreateQuestNpc(arg1, npcs.Npc20531Data.id, 1)
end

function Quest71052:OnSubFinish7105203(arg1)
    print("OnSubFinish7105203")
    self:SafeDestroyQuestNpc(npcs.Npc20531Data.alias, 6)
end

function Quest71052:OnSubStart7105204(arg1)
    print("OnSubStart7105204")
    self:CreateQuestNpc(arg1, npcs.Npc20532Data.id, 1)
end

function Quest71052:OnSubFinish7105204(arg1)
    print("OnSubFinish7105204")
    self:SafeDestroyQuestNpc(npcs.Npc20532Data.alias, 6)
end

function Quest71052:OnSubStart7105205(arg1)
    print("OnSubStart7105205")
    self:CreateQuestNpc(arg1, npcs.Npc20533Data.id, 1)
end

function Quest71052:OnSubFinish7105205(arg1)
    print("OnSubFinish7105205")
    self:SafeDestroyQuestNpc(npcs.Npc20533Data.alias, 6)
end

function Quest71052:OnSubStart7105206(arg1)
    print("OnSubStart7105206")
end

function Quest71052:OnSubFinish7105206(arg1)
    print("OnSubFinish7105206")
end

function Quest71052:OnSubStart7105207(arg1)
    print("OnSubStart7105207")
end

function Quest71052:OnSubFinish7105207(arg1)
    print("OnSubFinish7105207")
end

function Quest71052:OnSubStart7105208(arg1)
    print("OnSubStart7105208")
end

function Quest71052:OnSubFinish7105208(arg1)
    print("OnSubFinish7105208")
end

return Quest71052
