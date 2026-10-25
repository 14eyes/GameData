require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2000 = class("Quest2000", QuestActorProxy)
Quest2000.defaultAlias = "Quest2000"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest2000:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest2000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["200001"] = self.OnSubStart200001,
        ["200002"] = self.OnSubStart200002,
        ["200003"] = self.OnSubStart200003,
        ["200004"] = self.OnSubStart200004,
        ["200011"] = self.OnSubStart200011,
        ["200005"] = self.OnSubStart200005,
        ["200006"] = self.OnSubStart200006,
        ["200007"] = self.OnSubStart200007,
        ["200008"] = self.OnSubStart200008,
        ["200009"] = self.OnSubStart200009,
        ["200010"] = self.OnSubStart200010
    }
end

function Quest2000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["200001"] = self.OnSubFinish200001,
        ["200002"] = self.OnSubFinish200002,
        ["200003"] = self.OnSubFinish200003,
        ["200004"] = self.OnSubFinish200004,
        ["200011"] = self.OnSubFinish200011,
        ["200005"] = self.OnSubFinish200005,
        ["200006"] = self.OnSubFinish200006,
        ["200007"] = self.OnSubFinish200007,
        ["200008"] = self.OnSubFinish200008,
        ["200009"] = self.OnSubFinish200009,
        ["200010"] = self.OnSubFinish200010
    }
end

function Quest2000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["200001"] = self.OnSubFailed200001,
        ["200002"] = self.OnSubFailed200002,
        ["200003"] = self.OnSubFailed200003,
        ["200004"] = self.OnSubFailed200004,
        ["200011"] = self.OnSubFailed200011,
        ["200005"] = self.OnSubFailed200005,
        ["200006"] = self.OnSubFailed200006,
        ["200007"] = self.OnSubFailed200007,
        ["200008"] = self.OnSubFailed200008,
        ["200009"] = self.OnSubFailed200009,
        ["200010"] = self.OnSubFailed200010
    }
end

function Quest2000:Start()
    print("Start")
end

function Quest2000:OnDestroy()
    print("OnDestroy")
end

function Quest2000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2000:PaimonDis()
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)

    self:ActionSafeCall(function(arg1)
        local actor = actorMgr:GetActor(npcs.PaimonData.alias)
        if actor ~= nil then
            if actor.uActor ~= nil then
                actor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest2000:Narrator09()
    print("Narrator09")
    self:NarratorOnlyTaskByData(datas.NarratorWithId02)
end

function Quest2000:OnSubStart200001(arg1)
    print("OnSubStart200001")
    actorMgr:CreateActorWithPos(datas.Q200001Trigger_.alias, datas.Q200001Trigger_.script, datas.Q200001Trigger_.id, 0, datas.Q200001Trigger_.point.pos, datas.Q200001Trigger_.point.rot, true, false, 3)
end

function Quest2000:OnSubFinish200001(arg1)
    print("OnSubFinish200001")
end

function Quest2000:OnSubFailed200001(arg1)
    print("OnSubFailed200001")
end

function Quest2000:OnSubStart200002(arg1)
    print("OnSubStart200002")
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 1)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest2000:OnSubFinish200002(arg1)
    print("OnSubFinish200002")
    self:PaimonDis()
end

function Quest2000:OnSubFailed200002(arg1)
    print("OnSubFailed200002")
end

function Quest2000:OnSubStart200003(arg1)
    print("OnSubStart200003")
    self:CreateQuestNpc(arg1, npcs.Npc207701Data.id, 1)
    self:NotifyTo("Npc2077", 1, true)
end

function Quest2000:OnSubFinish200003(arg1)
    print("OnSubFinish200003")
    self:SafeDestroyQuestNpc(npcs.Npc207701Data.alias, 3)
    self:PaimonDis()
    self:LightNotifyTo("Npc2077", 0, true)
end

function Quest2000:OnSubFailed200003(arg1)
    print("OnSubFailed200003")
end

function Quest2000:OnSubStart200004(arg1)
    print("OnSubStart200004")
    self:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1031Data.alias)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 2)
    local v = self:GetQuestNpcActor(npcs.Npc1032Data.alias)
    v:DoFreeStyle(1220, true, nil, true, true, false)
    actorMgr:CreateActorWithPos(datas.Q200004Trigger_.alias, datas.Q200004Trigger_.script, datas.Q200004Trigger_.id, 0, datas.Q200004Trigger_.point.pos, datas.Q200004Trigger_.point.rot, true, false, 3)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest2000:OnSubFinish200004(arg1)
    print("OnSubFinish200004")
    self:PaimonDis()
    self:GetQuestNpcActor(npcs.Npc1031Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1032Data.alias):DisableInteeHeadCtrl(false)
end

function Quest2000:OnSubFailed200004(arg1)
    print("OnSubFailed200004")
end

function Quest2000:OnSubStart200011(arg1)
    print("OnSubStart200011")
    actorMgr:CreateActorWithPos(datas.Q200011Trigger_.alias, datas.Q200011Trigger_.script, datas.Q200011Trigger_.id, 0, datas.Q200011Trigger_.point.pos, datas.Q200011Trigger_.point.rot, true, false, 3)
end

function Quest2000:OnSubFinish200011(arg1)
    print("OnSubFinish200011")
    self:NarratorOnlyTaskByData(datas.NarratorWithId01)
end

function Quest2000:OnSubFailed200011(arg1)
    print("OnSubFailed200011")
end

function Quest2000:OnSubStart200005(arg1)
    print("OnSubStart200005")
end

function Quest2000:OnSubFinish200005(arg1)
    print("OnSubFinish200005")
    self:PaimonDis()
end

function Quest2000:OnSubFailed200005(arg1)
    print("OnSubFailed200005")
end

function Quest2000:OnSubStart200006(arg1)
    print("OnSubStart200006")
end

function Quest2000:OnSubFinish200006(arg1)
    print("OnSubFinish200006")
    self:PaimonDis()
end

function Quest2000:OnSubFailed200006(arg1)
    print("OnSubFailed200006")
end

function Quest2000:OnSubStart200007(arg1)
    print("OnSubStart200007")
    self:CreateQuestNpc(arg1, npcs.Npc10415Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc10415Data.alias):DoFreeStyle(4110, true, nil, true, true, false)
end

function Quest2000:OnSubFinish200007(arg1)
    print("OnSubFinish200007")
    self:SafeDestroyQuestNpc(npcs.Npc10415Data.alias, 3)
    self:PaimonDis()
end

function Quest2000:OnSubFailed200007(arg1)
    print("OnSubFailed200007")
end

function Quest2000:OnSubStart200008(arg1)
    print("OnSubStart200008")
end

function Quest2000:OnSubFinish200008(arg1)
    print("OnSubFinish200008")
end

function Quest2000:OnSubFailed200008(arg1)
    print("OnSubFailed200008")
end

function Quest2000:OnSubStart200009(arg1)
    print("OnSubStart200009")
end

function Quest2000:OnSubFinish200009(arg1)
    print("OnSubFinish200009")
    self:SafeDestroyQuestNpc(npcs.Npc1031Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:CallDelay(2, self.Narrator09)
end

function Quest2000:OnSubFailed200009(arg1)
    print("OnSubFailed200009")
end

function Quest2000:OnSubStart200010(arg1)
    print("OnSubStart200010")
end

function Quest2000:OnSubFinish200010(arg1)
    print("OnSubFinish200010")
end

function Quest2000:OnSubFailed200010(arg1)
    print("OnSubFailed200010")
end

return Quest2000
