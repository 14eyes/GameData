require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20602 = class("Quest20602", QuestActorProxy)
Quest20602.defaultAlias = "Quest20602"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20602:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20602:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2060201"] = self.OnSubStart2060201,
        ["2060202"] = self.OnSubStart2060202,
        ["2060203"] = self.OnSubStart2060203,
        ["2060204"] = self.OnSubStart2060204,
        ["2060205"] = self.OnSubStart2060205,
        ["2060206"] = self.OnSubStart2060206,
        ["2060207"] = self.OnSubStart2060207,
        ["2060208"] = self.OnSubStart2060208,
        ["2060209"] = self.OnSubStart2060209,
        ["2060210"] = self.OnSubStart2060210,
        ["2060211"] = self.OnSubStart2060211,
        ["2060212"] = self.OnSubStart2060212,
        ["2060213"] = self.OnSubStart2060213
    }
end

function Quest20602:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2060201"] = self.OnSubFinish2060201,
        ["2060202"] = self.OnSubFinish2060202,
        ["2060203"] = self.OnSubFinish2060203,
        ["2060204"] = self.OnSubFinish2060204,
        ["2060205"] = self.OnSubFinish2060205,
        ["2060206"] = self.OnSubFinish2060206,
        ["2060207"] = self.OnSubFinish2060207,
        ["2060208"] = self.OnSubFinish2060208,
        ["2060209"] = self.OnSubFinish2060209,
        ["2060210"] = self.OnSubFinish2060210,
        ["2060211"] = self.OnSubFinish2060211,
        ["2060212"] = self.OnSubFinish2060212,
        ["2060213"] = self.OnSubFinish2060213
    }
end

function Quest20602:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2060201"] = self.OnSubFailed2060201,
        ["2060202"] = self.OnSubFailed2060202,
        ["2060203"] = self.OnSubFailed2060203,
        ["2060204"] = self.OnSubFailed2060204,
        ["2060205"] = self.OnSubFailed2060205,
        ["2060206"] = self.OnSubFailed2060206,
        ["2060207"] = self.OnSubFailed2060207,
        ["2060208"] = self.OnSubFailed2060208,
        ["2060209"] = self.OnSubFailed2060209,
        ["2060210"] = self.OnSubFailed2060210,
        ["2060211"] = self.OnSubFailed2060211,
        ["2060212"] = self.OnSubFailed2060212,
        ["2060213"] = self.OnSubFailed2060213
    }
end

function Quest20602:Start()
    print("Start")
end

function Quest20602:OnDestroy()
    print("OnDestroy")
end

function Quest20602:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 1.5, 0.5, self.ClearAll)
end

function Quest20602:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20602:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo(npcs.Npc1409Data.alias, 0, true)
end

function Quest20602:ClearAll()
    print("ClearAll")
    self:NotifyTo(npcs.Npc1409Data.alias, 0, true)
end

function Quest20602:OnSubStart2060201(arg1)
    print("OnSubStart2060201")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest20602:OnSubFinish2060201(arg1)
    print("OnSubFinish2060201")
end

function Quest20602:OnSubFailed2060201(arg1)
    print("OnSubFailed2060201")
end

function Quest20602:OnSubStart2060202(arg1)
    print("OnSubStart2060202")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest20602:OnSubFinish2060202(arg1)
    print("OnSubFinish2060202")
end

function Quest20602:OnSubFailed2060202(arg1)
    print("OnSubFailed2060202")
end

function Quest20602:OnSubStart2060203(arg1)
    print("OnSubStart2060203")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest20602:OnSubFinish2060203(arg1)
    print("OnSubFinish2060203")
end

function Quest20602:OnSubFailed2060203(arg1)
    print("OnSubFailed2060203")
end

function Quest20602:OnSubStart2060204(arg1)
    print("OnSubStart2060204")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest20602:OnSubFinish2060204(arg1)
    print("OnSubFinish2060204")
end

function Quest20602:OnSubFailed2060204(arg1)
    print("OnSubFailed2060204")
end

function Quest20602:OnSubStart2060205(arg1)
    print("OnSubStart2060205")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest20602:OnSubFinish2060205(arg1)
    print("OnSubFinish2060205")
end

function Quest20602:OnSubFailed2060205(arg1)
    print("OnSubFailed2060205")
end

function Quest20602:OnSubStart2060206(arg1)
    print("OnSubStart2060206")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest20602:OnSubFinish2060206(arg1)
    print("OnSubFinish2060206")
end

function Quest20602:OnSubFailed2060206(arg1)
    print("OnSubFailed2060206")
end

function Quest20602:OnSubStart2060207(arg1)
    print("OnSubStart2060207")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest20602:OnSubFinish2060207(arg1)
    print("OnSubFinish2060207")
end

function Quest20602:OnSubFailed2060207(arg1)
    print("OnSubFailed2060207")
end

function Quest20602:OnSubStart2060208(arg1)
    print("OnSubStart2060208")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest20602:OnSubFinish2060208(arg1)
    print("OnSubFinish2060208")
end

function Quest20602:OnSubFailed2060208(arg1)
    print("OnSubFailed2060208")
end

function Quest20602:OnSubStart2060209(arg1)
    print("OnSubStart2060209")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest20602:OnSubFinish2060209(arg1)
    print("OnSubFinish2060209")
end

function Quest20602:OnSubFailed2060209(arg1)
    print("OnSubFailed2060209")
end

function Quest20602:OnSubStart2060210(arg1)
    print("OnSubStart2060210")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest20602:OnSubFinish2060210(arg1)
    print("OnSubFinish2060210")
end

function Quest20602:OnSubFailed2060210(arg1)
    print("OnSubFailed2060210")
end

function Quest20602:OnSubStart2060211(arg1)
    print("OnSubStart2060211")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest20602:OnSubFinish2060211(arg1)
    print("OnSubFinish2060211")
end

function Quest20602:OnSubFailed2060211(arg1)
    print("OnSubFailed2060211")
end

function Quest20602:OnSubStart2060212(arg1)
    print("OnSubStart2060212")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest20602:OnSubFinish2060212(arg1)
    print("OnSubFinish2060212")
end

function Quest20602:OnSubFailed2060212(arg1)
    print("OnSubFailed2060212")
end

function Quest20602:OnSubStart2060213(arg1)
    print("OnSubStart2060213")
    self:NotifyTo(npcs.Npc1409Data.alias, 2, true)
end

function Quest20602:OnSubFinish2060213(arg1)
    print("OnSubFinish2060213")
end

function Quest20602:OnSubFailed2060213(arg1)
    print("OnSubFailed2060213")
end

return Quest20602
