require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41214 = class("Quest41214", QuestActorProxy)
Quest41214.defaultAlias = "Quest41214"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest41214:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest41214:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4121401"] = self.OnSubStart4121401,
        ["4121402"] = self.OnSubStart4121402,
        ["4121403"] = self.OnSubStart4121403,
        ["4121404"] = self.OnSubStart4121404,
        ["4121405"] = self.OnSubStart4121405
    }
end

function Quest41214:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4121401"] = self.OnSubFinish4121401,
        ["4121402"] = self.OnSubFinish4121402,
        ["4121403"] = self.OnSubFinish4121403,
        ["4121404"] = self.OnSubFinish4121404,
        ["4121405"] = self.OnSubFinish4121405
    }
end

function Quest41214:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4121401"] = self.OnSubFailed4121401,
        ["4121402"] = self.OnSubFailed4121402,
        ["4121403"] = self.OnSubFailed4121403,
        ["4121404"] = self.OnSubFailed4121404,
        ["4121405"] = self.OnSubFailed4121405
    }
end

function Quest41214:Start()
    print("Start")
end

function Quest41214:OnDestroy()
    print("OnDestroy")
end

function Quest41214:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41214:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41214:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ActionSafeCall(self.EliminateAll)
end

function Quest41214:EliminateAbeiduo()
    print("EliminateAbeiduo")
    self:DestroyQuestNpcActor(npcs.Npc1018Data.alias, 3)
end

function Quest41214:Finish02()
    print("Finish02")
    self:EliminateAbeiduo()
    self:EliminatePaimon()
end

function Quest41214:EliminatePaimon()
    print("EliminatePaimon")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest41214:FinishQ05()
    print("FinishQ05")
    self:TransmitPlayerByQuestId(4121405, 1, self.FinishFather)
    self:EliminateAbeiduo()
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
end

function Quest41214:FinishFather()
    print("FinishFather")
    self:FinishQuestID(false, 4121405)
end

function Quest41214:InvokeOnInteraction(arg1)
    if arg1 == 4121403 then
        self:FinishQuestID(false, 4121403)
    elseif arg1 == 4121404 then
        self:FinishQuestID(false, 4121404)
    end
end

function Quest41214:EliminateAll()
    print("EliminateAll")
    self:DestroyQuestNpcActor(npcs.Npc1018Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.PaimonData.alias, 3)
end

function Quest41214:OnSubStart4121401(arg1)
    print("OnSubStart4121401")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    if self:IsInNavigation() == false then
        self:SetNavigationByMainId(41214, true)
    end
end

function Quest41214:OnSubFinish4121401(arg1)
    print("OnSubFinish4121401")
end

function Quest41214:OnSubFailed4121401(arg1)
    print("OnSubFailed4121401")
end

function Quest41214:OnSubStart4121402(arg1)
    print("OnSubStart4121402")
end

function Quest41214:OnSubFinish4121402(arg1)
    print("OnSubFinish4121402")
end

function Quest41214:OnSubFailed4121402(arg1)
    print("OnSubFailed4121402")
end

function Quest41214:OnSubStart4121403(arg1)
    print("OnSubStart4121403")
end

function Quest41214:OnSubFinish4121403(arg1)
    print("OnSubFinish4121403")
end

function Quest41214:OnSubFailed4121403(arg1)
    print("OnSubFailed4121403")
end

function Quest41214:OnSubStart4121404(arg1)
    print("OnSubStart4121404")
end

function Quest41214:OnSubFinish4121404(arg1)
    print("OnSubFinish4121404")
end

function Quest41214:OnSubFailed4121404(arg1)
    print("OnSubFailed4121404")
end

function Quest41214:OnSubStart4121405(arg1)
    print("OnSubStart4121405")
    self:ActionSafeCall(self.FinishQ05)
end

function Quest41214:OnSubFinish4121405(arg1)
    print("OnSubFinish4121405")
end

function Quest41214:OnSubFailed4121405(arg1)
    print("OnSubFailed4121405")
end

return Quest41214
