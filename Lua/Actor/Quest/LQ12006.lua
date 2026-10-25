require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12006 = class("Quest12006", QuestActorProxy)
Quest12006.defaultAlias = "Quest12006"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12006:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1200601"] = self.OnSubStart1200601,
        ["1200602"] = self.OnSubStart1200602,
        ["1200603"] = self.OnSubStart1200603,
        ["1200607"] = self.OnSubStart1200607,
        ["1200608"] = self.OnSubStart1200608,
        ["1200606"] = self.OnSubStart1200606,
        ["1200605"] = self.OnSubStart1200605,
        ["1200604"] = self.OnSubStart1200604
    }
end

function Quest12006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1200601"] = self.OnSubFinish1200601,
        ["1200602"] = self.OnSubFinish1200602,
        ["1200603"] = self.OnSubFinish1200603,
        ["1200607"] = self.OnSubFinish1200607,
        ["1200608"] = self.OnSubFinish1200608,
        ["1200606"] = self.OnSubFinish1200606,
        ["1200605"] = self.OnSubFinish1200605,
        ["1200604"] = self.OnSubFinish1200604
    }
end

function Quest12006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1200601"] = self.OnSubFailed1200601,
        ["1200602"] = self.OnSubFailed1200602,
        ["1200603"] = self.OnSubFailed1200603,
        ["1200607"] = self.OnSubFailed1200607,
        ["1200608"] = self.OnSubFailed1200608,
        ["1200606"] = self.OnSubFailed1200606,
        ["1200605"] = self.OnSubFailed1200605,
        ["1200604"] = self.OnSubFailed1200604
    }
end

function Quest12006:Start()
    print("Start")
end

function Quest12006:OnDestroy()
    print("OnDestroy")
end

function Quest12006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12006:ClearCookPoint()
    print("ClearCookPoint")
    self:SafeDestroyQuestNpc(npcs.Npc1013DataCookPoint.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest12006:ClearFoodAll()
    print("ClearFoodAll")
    self:SafeDestroyQuestNpc(npcs.Npc1013DataFoodSit.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc3044Data.alias, 3)
end

function Quest12006:ClearClothAll()
    print("ClearClothAll")
    self:SafeDestroyQuestNpc(npcs.Npc3006Data.alias, 3)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc1013DataFoodSit.alias, 3)
end

function Quest12006:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1200607)
            actor:FinishQuestID(true, 1200608)
        end

        print("Talk1200602:Special Menu finish 1200607, fail 1200608")
    end
end

function Quest12006:ClearPaimon()
    print("ClearPaimon")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest12006:OnSubStart1200601(arg1)
    print("OnSubStart1200601")
    self:CreateQuestNpc(arg1, npcs.Npc3044Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q12006Trigger_.alias, datas.Q12006Trigger_.script, datas.Q12006Trigger_.id, 0, datas.Q12006Trigger_.point.pos, datas.Q12006Trigger_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc3006Data.id, 1)
end

function Quest12006:OnSubFinish1200601(arg1)
    print("OnSubFinish1200601")
    self:ActionSafeCall(self.ClearPaimon)
    local actor = actorMgr:GetActor(datas.Q12006Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12006:OnSubFailed1200601(arg1)
    print("OnSubFailed1200601")
end

function Quest12006:OnSubStart1200602(arg1)
    print("OnSubStart1200602")
    self:CreateQuestNpc(arg1, npcs.Npc1013DataCookPoint.id, 4)
end

function Quest12006:OnSubFinish1200602(arg1)
    print("OnSubFinish1200602")
end

function Quest12006:OnSubFailed1200602(arg1)
    print("OnSubFailed1200602")
end

function Quest12006:OnSubStart1200603(arg1)
    print("OnSubStart1200603")
    self:RequestInteraction("Npc1013")
end

function Quest12006:OnSubFinish1200603(arg1)
    print("OnSubFinish1200603")
    self:ActionSafeCall(self.ClearCookPoint)
end

function Quest12006:OnSubFailed1200603(arg1)
    print("OnSubFailed1200603")
end

function Quest12006:OnSubStart1200607(arg1)
    print("OnSubStart1200607")
end

function Quest12006:OnSubFinish1200607(arg1)
    print("OnSubFinish1200607")
end

function Quest12006:OnSubFailed1200607(arg1)
    print("OnSubFailed1200607")
end

function Quest12006:OnSubStart1200608(arg1)
    print("OnSubStart1200608")
end

function Quest12006:OnSubFinish1200608(arg1)
    print("OnSubFinish1200608")
end

function Quest12006:OnSubFailed1200608(arg1)
    print("OnSubFailed1200608")
end

function Quest12006:OnSubStart1200606(arg1)
    print("OnSubStart1200606")
end

function Quest12006:OnSubFinish1200606(arg1)
    print("OnSubFinish1200606")
    self:ActionSafeCall(self.ClearFoodAll)
end

function Quest12006:OnSubFailed1200606(arg1)
    print("OnSubFailed1200606")
end

function Quest12006:OnSubStart1200605(arg1)
    print("OnSubStart1200605")
    self:CreateQuestNpc(arg1, npcs.Npc3006Data.id, 1)
end

function Quest12006:OnSubFinish1200605(arg1)
    print("OnSubFinish1200605")
    self:ActionSafeCall(self.ClearClothAll)
end

function Quest12006:OnSubFailed1200605(arg1)
    print("OnSubFailed1200605")
end

function Quest12006:OnSubStart1200604(arg1)
    print("OnSubStart1200604")
end

function Quest12006:OnSubFinish1200604(arg1)
    print("OnSubFinish1200604")
end

function Quest12006:OnSubFailed1200604(arg1)
    print("OnSubFailed1200604")
end

return Quest12006
