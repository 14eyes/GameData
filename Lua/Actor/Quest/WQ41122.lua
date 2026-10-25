require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41122 = class("Quest41122", QuestActorProxy)
Quest41122.defaultAlias = "Quest41122"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest41122:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest41122:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4112247"] = self.OnSubStart4112247,
        ["4112201"] = self.OnSubStart4112201,
        ["4112202"] = self.OnSubStart4112202,
        ["4112203"] = self.OnSubStart4112203,
        ["4112204"] = self.OnSubStart4112204,
        ["4112248"] = self.OnSubStart4112248,
        ["4112249"] = self.OnSubStart4112249,
        ["4112205"] = self.OnSubStart4112205,
        ["4112206"] = self.OnSubStart4112206,
        ["4112207"] = self.OnSubStart4112207,
        ["4112208"] = self.OnSubStart4112208,
        ["4112209"] = self.OnSubStart4112209
    }
end

function Quest41122:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4112247"] = self.OnSubFinish4112247,
        ["4112201"] = self.OnSubFinish4112201,
        ["4112202"] = self.OnSubFinish4112202,
        ["4112203"] = self.OnSubFinish4112203,
        ["4112204"] = self.OnSubFinish4112204,
        ["4112248"] = self.OnSubFinish4112248,
        ["4112249"] = self.OnSubFinish4112249,
        ["4112205"] = self.OnSubFinish4112205,
        ["4112206"] = self.OnSubFinish4112206,
        ["4112207"] = self.OnSubFinish4112207,
        ["4112208"] = self.OnSubFinish4112208,
        ["4112209"] = self.OnSubFinish4112209
    }
end

function Quest41122:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4112247"] = self.OnSubFailed4112247,
        ["4112201"] = self.OnSubFailed4112201,
        ["4112202"] = self.OnSubFailed4112202,
        ["4112203"] = self.OnSubFailed4112203,
        ["4112204"] = self.OnSubFailed4112204,
        ["4112248"] = self.OnSubFailed4112248,
        ["4112249"] = self.OnSubFailed4112249,
        ["4112205"] = self.OnSubFailed4112205,
        ["4112206"] = self.OnSubFailed4112206,
        ["4112207"] = self.OnSubFailed4112207,
        ["4112208"] = self.OnSubFailed4112208,
        ["4112209"] = self.OnSubFailed4112209
    }
end

function Quest41122:Start()
    print("Start")
end

function Quest41122:OnDestroy()
    print("OnDestroy")
end

function Quest41122:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 0.4, 0.2, self.ClearDate, nil, nil, "")
end

function Quest41122:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearDate()
end

function Quest41122:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearDate()
end

function Quest41122:ClearDate()
    print("ClearDate")
    self:DestroyQuestNpcActor(npcs.Npc1433Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1561Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1598Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1597Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1583Data.alias, 3)
end

function Quest41122:OnSubStart4112247(arg1)
    print("OnSubStart4112247")
end

function Quest41122:OnSubFinish4112247(arg1)
    print("OnSubFinish4112247")
end

function Quest41122:OnSubFailed4112247(arg1)
    print("OnSubFailed4112247")
end

function Quest41122:OnSubStart4112201(arg1)
    print("OnSubStart4112201")
    self:CreateQuestNpc(arg1, npcs.Npc1433Data.id, 1)
end

function Quest41122:OnSubFinish4112201(arg1)
    print("OnSubFinish4112201")
end

function Quest41122:OnSubFailed4112201(arg1)
    print("OnSubFailed4112201")
end

function Quest41122:OnSubStart4112202(arg1)
    print("OnSubStart4112202")
    self:CreateQuestNpc(arg1, npcs.Npc1561Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1598Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1597Data.id, 3)
end

function Quest41122:OnSubFinish4112202(arg1)
    print("OnSubFinish4112202")
end

function Quest41122:OnSubFailed4112202(arg1)
    print("OnSubFailed4112202")
end

function Quest41122:OnSubStart4112203(arg1)
    print("OnSubStart4112203")
end

function Quest41122:OnSubFinish4112203(arg1)
    print("OnSubFinish4112203")
end

function Quest41122:OnSubFailed4112203(arg1)
    print("OnSubFailed4112203")
end

function Quest41122:OnSubStart4112204(arg1)
    print("OnSubStart4112204")
end

function Quest41122:OnSubFinish4112204(arg1)
    print("OnSubFinish4112204")
end

function Quest41122:OnSubFailed4112204(arg1)
    print("OnSubFailed4112204")
end

function Quest41122:OnSubStart4112248(arg1)
    print("OnSubStart4112248")
end

function Quest41122:OnSubFinish4112248(arg1)
    print("OnSubFinish4112248")
end

function Quest41122:OnSubFailed4112248(arg1)
    print("OnSubFailed4112248")
end

function Quest41122:OnSubStart4112249(arg1)
    print("OnSubStart4112249")
end

function Quest41122:OnSubFinish4112249(arg1)
    print("OnSubFinish4112249")
end

function Quest41122:OnSubFailed4112249(arg1)
    print("OnSubFailed4112249")
end

function Quest41122:OnSubStart4112205(arg1)
    print("OnSubStart4112205")
end

function Quest41122:OnSubFinish4112205(arg1)
    print("OnSubFinish4112205")
end

function Quest41122:OnSubFailed4112205(arg1)
    print("OnSubFailed4112205")
end

function Quest41122:OnSubStart4112206(arg1)
    print("OnSubStart4112206")
    self:CreateQuestNpc(arg1, npcs.Npc1583Data.id, 1)
end

function Quest41122:OnSubFinish4112206(arg1)
    print("OnSubFinish4112206")
end

function Quest41122:OnSubFailed4112206(arg1)
    print("OnSubFailed4112206")
end

function Quest41122:OnSubStart4112207(arg1)
    print("OnSubStart4112207")
end

function Quest41122:OnSubFinish4112207(arg1)
    print("OnSubFinish4112207")
end

function Quest41122:OnSubFailed4112207(arg1)
    print("OnSubFailed4112207")
end

function Quest41122:OnSubStart4112208(arg1)
    print("OnSubStart4112208")
end

function Quest41122:OnSubFinish4112208(arg1)
    print("OnSubFinish4112208")
end

function Quest41122:OnSubFailed4112208(arg1)
    print("OnSubFailed4112208")
end

function Quest41122:OnSubStart4112209(arg1)
    print("OnSubStart4112209")
end

function Quest41122:OnSubFinish4112209(arg1)
    print("OnSubFinish4112209")
end

function Quest41122:OnSubFailed4112209(arg1)
    print("OnSubFailed4112209")
end

return Quest41122
