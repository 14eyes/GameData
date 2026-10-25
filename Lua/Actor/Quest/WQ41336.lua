require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41336 = class("Quest41336", QuestActorProxy)
Quest41336.defaultAlias = "Quest41336"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest41336:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest41336:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4133610"] = self.OnSubStart4133610,
        ["4133601"] = self.OnSubStart4133601,
        ["4133602"] = self.OnSubStart4133602,
        ["4133603"] = self.OnSubStart4133603,
        ["4133604"] = self.OnSubStart4133604,
        ["4133605"] = self.OnSubStart4133605,
        ["4133606"] = self.OnSubStart4133606,
        ["4133607"] = self.OnSubStart4133607,
        ["4133608"] = self.OnSubStart4133608,
        ["4133609"] = self.OnSubStart4133609
    }
end

function Quest41336:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4133610"] = self.OnSubFinish4133610,
        ["4133601"] = self.OnSubFinish4133601,
        ["4133602"] = self.OnSubFinish4133602,
        ["4133603"] = self.OnSubFinish4133603,
        ["4133604"] = self.OnSubFinish4133604,
        ["4133605"] = self.OnSubFinish4133605,
        ["4133606"] = self.OnSubFinish4133606,
        ["4133607"] = self.OnSubFinish4133607,
        ["4133608"] = self.OnSubFinish4133608,
        ["4133609"] = self.OnSubFinish4133609
    }
end

function Quest41336:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4133610"] = self.OnSubFailed4133610,
        ["4133601"] = self.OnSubFailed4133601,
        ["4133602"] = self.OnSubFailed4133602,
        ["4133603"] = self.OnSubFailed4133603,
        ["4133604"] = self.OnSubFailed4133604,
        ["4133605"] = self.OnSubFailed4133605,
        ["4133606"] = self.OnSubFailed4133606,
        ["4133607"] = self.OnSubFailed4133607,
        ["4133608"] = self.OnSubFailed4133608,
        ["4133609"] = self.OnSubFailed4133609
    }
end

function Quest41336:Start()
    print("Start")
    self:NotifyTo("Npc2017", 0, true)
end

function Quest41336:OnDestroy()
    print("OnDestroy")
end

function Quest41336:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo("Npc2017", 0, true)
    print("ClearClientTrigger")
end

function Quest41336:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41336:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2017", 0, true)
    print("DestroyLinLin01")
    self:DestroyQuestNpcActor(npcs.Npc201701Data.alias, 3)
    print("DestroyXiaoZongGuan")
    self:NotifyTo("Npc2004", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc200401Data.alias, 3)
    print("DestroyDeGui")
    self:SafeDestroyQuestNpc(npcs.Npc204001Data.alias, 3)
    self:NotifyTo("Npc2040", 0, true)
    print("DestroyBiBo")
    self:SafeDestroyQuestNpc(npcs.Npc203201Data.alias, 3)
    self:NotifyTo("Npc2032", 0, true)
    print("ClearClientTrigger")
end

function Quest41336:HideLinLin01()
    print("HideLinLin01")
    self:NotifyTo("Npc2017", 1, true)
end

function Quest41336:DestroyLinLin01()
    print("DestroyLinLin01")
    self:DestroyQuestNpcActor(npcs.Npc201701Data.alias, 3)
end

function Quest41336:DestroyXiaoZongGuan()
    print("DestroyXiaoZongGuan")
    self:NotifyTo("Npc2004", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc200401Data.alias, 3)
end

function Quest41336:DestroyDeGui()
    print("DestroyDeGui")
    self:SafeDestroyQuestNpc(npcs.Npc204001Data.alias, 3)
    self:NotifyTo("Npc2040", 0, true)
end

function Quest41336:DestroyBiBo()
    print("DestroyBiBo")
    self:SafeDestroyQuestNpc(npcs.Npc203201Data.alias, 3)
    self:NotifyTo("Npc2032", 0, true)
end

function Quest41336:OnSubStart4133610(arg1)
    print("OnSubStart4133610")
end

function Quest41336:OnSubFinish4133610(arg1)
    print("OnSubFinish4133610")
end

function Quest41336:OnSubFailed4133610(arg1)
    print("OnSubFailed4133610")
end

function Quest41336:OnSubStart4133601(arg1)
    print("OnSubStart4133601")
end

function Quest41336:OnSubFinish4133601(arg1)
    print("OnSubFinish4133601")
end

function Quest41336:OnSubFailed4133601(arg1)
    print("OnSubFailed4133601")
end

function Quest41336:OnSubStart4133602(arg1)
    print("OnSubStart4133602")
end

function Quest41336:OnSubFinish4133602(arg1)
    print("OnSubFinish4133602")
end

function Quest41336:OnSubFailed4133602(arg1)
    print("OnSubFailed4133602")
end

function Quest41336:OnSubStart4133603(arg1)
    print("OnSubStart4133603")
end

function Quest41336:OnSubFinish4133603(arg1)
    print("OnSubFinish4133603")
    self:ShowBlackScreen(0.5, 1, 0.5, self.HideLinLin01, nil, nil, "")
end

function Quest41336:OnSubFailed4133603(arg1)
    print("OnSubFailed4133603")
end

function Quest41336:OnSubStart4133604(arg1)
    print("OnSubStart4133604")
    actorMgr:CreateActorWithPos(datas.Q41336Trigger1_.alias, datas.Q41336Trigger1_.script, datas.Q41336Trigger1_.id, 0, datas.Q41336Trigger1_.point.pos, datas.Q41336Trigger1_.point.rot, true, false, 3)
    self:NotifyTo("Npc2004", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc200401Data.id, 2)
end

function Quest41336:OnSubFinish4133604(arg1)
    print("OnSubFinish4133604")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyLinLin01, nil, nil, "")
end

function Quest41336:OnSubFailed4133604(arg1)
    print("OnSubFailed4133604")
end

function Quest41336:OnSubStart4133605(arg1)
    print("OnSubStart4133605")
    self:NotifyTo("Npc2017", 1, true)
    self:NotifyTo("Npc2004", 1, true)
end

function Quest41336:OnSubFinish4133605(arg1)
    print("OnSubFinish4133605")
    self:DestroyQuestNpcActor(npcs.Npc201701Data.alias, 3)
end

function Quest41336:OnSubFailed4133605(arg1)
    print("OnSubFailed4133605")
end

function Quest41336:OnSubStart4133606(arg1)
    print("OnSubStart4133606")
    actorMgr:CreateActorWithPos(datas.Q41336Trigger2_.alias, datas.Q41336Trigger2_.script, datas.Q41336Trigger2_.id, 0, datas.Q41336Trigger2_.point.pos, datas.Q41336Trigger2_.point.rot, true, false, 3)
    self:NotifyTo("Npc2017", 1, true)
    self:NotifyTo("Npc2040", 1, true)
    self:NotifyTo("Npc2079", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc204001Data.id, 2)
end

function Quest41336:OnSubFinish4133606(arg1)
    print("OnSubFinish4133606")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyLinLin01, nil, nil, "")
end

function Quest41336:OnSubFailed4133606(arg1)
    print("OnSubFailed4133606")
end

function Quest41336:OnSubStart4133607(arg1)
    print("OnSubStart4133607")
    self:NotifyTo("Npc2017", 1, true)
    self:NotifyTo("Npc2040", 1, true)
    self:NotifyTo("Npc2079", 1, true)
    self:SafeDestroyQuestNpc(npcs.Npc200401Data.alias, 3)
    self:NotifyTo("Npc2004", 0, true)
end

function Quest41336:OnSubFinish4133607(arg1)
    print("OnSubFinish4133607")
    self:DestroyQuestNpcActor(npcs.Npc201701Data.alias, 3)
end

function Quest41336:OnSubFailed4133607(arg1)
    print("OnSubFailed4133607")
end

function Quest41336:OnSubStart4133608(arg1)
    print("OnSubStart4133608")
    actorMgr:CreateActorWithPos(datas.Q41336Trigger3_.alias, datas.Q41336Trigger3_.script, datas.Q41336Trigger3_.id, 0, datas.Q41336Trigger3_.point.pos, datas.Q41336Trigger3_.point.rot, true, false, 3)
    self:NotifyTo("Npc2032", 1, true)
    self:NotifyTo("Npc2017", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc203201Data.id, 2)
end

function Quest41336:OnSubFinish4133608(arg1)
    print("OnSubFinish4133608")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyLinLin01, nil, nil, "")
    self:SafeDestroyQuestNpc(npcs.Npc204001Data.alias, 3)
    self:NotifyTo("Npc2079", 0, true)
    self:NotifyTo("Npc2040", 0, true)
end

function Quest41336:OnSubFailed4133608(arg1)
    print("OnSubFailed4133608")
end

function Quest41336:OnSubStart4133609(arg1)
    print("OnSubStart4133609")
    self:NotifyTo("Npc2017", 1, true)
    self:NotifyTo("Npc2032", 1, true)
end

function Quest41336:OnSubFinish4133609(arg1)
    print("OnSubFinish4133609")
    self:SafeDestroyQuestNpc(npcs.Npc203201Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc201701Data.alias, 3)
    self:NotifyTo("Npc2079", 0, true)
    self:NotifyTo("Npc2032", 0, true)
end

function Quest41336:OnSubFailed4133609(arg1)
    print("OnSubFailed4133609")
end

return Quest41336
