require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22025 = class("Quest22025", QuestActorProxy)
Quest22025.defaultAlias = "Quest22025"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22025:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2202501"] = self.OnSubStart2202501,
        ["2202502"] = self.OnSubStart2202502,
        ["2202503"] = self.OnSubStart2202503,
        ["2202504"] = self.OnSubStart2202504,
        ["2202505"] = self.OnSubStart2202505,
        ["2202506"] = self.OnSubStart2202506,
        ["2202507"] = self.OnSubStart2202507,
        ["2202508"] = self.OnSubStart2202508,
        ["2202509"] = self.OnSubStart2202509,
        ["2202510"] = self.OnSubStart2202510
    }
end

function Quest22025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2202501"] = self.OnSubFinish2202501,
        ["2202502"] = self.OnSubFinish2202502,
        ["2202503"] = self.OnSubFinish2202503,
        ["2202504"] = self.OnSubFinish2202504,
        ["2202505"] = self.OnSubFinish2202505,
        ["2202506"] = self.OnSubFinish2202506,
        ["2202507"] = self.OnSubFinish2202507,
        ["2202508"] = self.OnSubFinish2202508,
        ["2202509"] = self.OnSubFinish2202509,
        ["2202510"] = self.OnSubFinish2202510
    }
end

function Quest22025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2202501"] = self.OnSubFailed2202501,
        ["2202502"] = self.OnSubFailed2202502,
        ["2202503"] = self.OnSubFailed2202503,
        ["2202504"] = self.OnSubFailed2202504,
        ["2202505"] = self.OnSubFailed2202505,
        ["2202506"] = self.OnSubFailed2202506,
        ["2202507"] = self.OnSubFailed2202507,
        ["2202508"] = self.OnSubFailed2202508,
        ["2202509"] = self.OnSubFailed2202509,
        ["2202510"] = self.OnSubFailed2202510
    }
end

function Quest22025:Start()
    print("Start")
end

function Quest22025:OnDestroy()
    print("OnDestroy")
end

function Quest22025:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc3022Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest22025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22025:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3071Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3072Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3022Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3079Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3022Data.alias, 3)
end

function Quest22025:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest22025:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest22025:CustmiseFunction() end

function Quest22025:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:SetQuestVarByMainId(0, 1)
        print("22025 param == 1")
    elseif arg1 == 2 then
        self:SetQuestVarByMainId(0, 2)
        print("22025 param == 2")
    elseif arg1 == 3 then
        self:SetQuestVarByMainId(0, 3)
        print("22025 param == 3")
    end
end

function Quest22025:OnSubStart2202501(arg1)
    print("OnSubStart2202501")
    self:CreateQuestNpc(arg1, npcs.Npc3022Data.id, 1)
end

function Quest22025:OnSubFinish2202501(arg1)
    print("OnSubFinish2202501")
end

function Quest22025:OnSubFailed2202501(arg1)
    print("OnSubFailed2202501")
end

function Quest22025:OnSubStart2202502(arg1)
    print("OnSubStart2202502")
    self:NpcCreate(arg1, npcs.Npc3071Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc3072Data.id, 2)
end

function Quest22025:OnSubFinish2202502(arg1)
    print("OnSubFinish2202502")
end

function Quest22025:OnSubFailed2202502(arg1)
    print("OnSubFailed2202502")
end

function Quest22025:OnSubStart2202503(arg1)
    print("OnSubStart2202503")
end

function Quest22025:OnSubFinish2202503(arg1)
    print("OnSubFinish2202503")
    self:NpcDestroy(npcs.Npc3071Data.alias, 3)
    self:NpcDestroy(npcs.Npc3072Data.alias, 3)
end

function Quest22025:OnSubFailed2202503(arg1)
    print("OnSubFailed2202503")
end

function Quest22025:OnSubStart2202504(arg1)
    print("OnSubStart2202504")
    self:NpcCreate(arg1, npcs.PaimonData.id, 1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:RequestInteraction(npcs.PaimonData.alias)
end

function Quest22025:OnSubFinish2202504(arg1)
    print("OnSubFinish2202504")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest22025:OnSubFailed2202504(arg1)
    print("OnSubFailed2202504")
end

function Quest22025:OnSubStart2202505(arg1)
    print("OnSubStart2202505")
end

function Quest22025:OnSubFinish2202505(arg1)
    print("OnSubFinish2202505")
end

function Quest22025:OnSubFailed2202505(arg1)
    print("OnSubFailed2202505")
end

function Quest22025:OnSubStart2202506(arg1)
    print("OnSubStart2202506")
end

function Quest22025:OnSubFinish2202506(arg1)
    print("OnSubFinish2202506")
end

function Quest22025:OnSubFailed2202506(arg1)
    print("OnSubFailed2202506")
end

function Quest22025:OnSubStart2202507(arg1)
    print("OnSubStart2202507")
end

function Quest22025:OnSubFinish2202507(arg1)
    print("OnSubFinish2202507")
end

function Quest22025:OnSubFailed2202507(arg1)
    print("OnSubFailed2202507")
end

function Quest22025:OnSubStart2202508(arg1)
    print("OnSubStart2202508")
end

function Quest22025:OnSubFinish2202508(arg1)
    print("OnSubFinish2202508")
end

function Quest22025:OnSubFailed2202508(arg1)
    print("OnSubFailed2202508")
end

function Quest22025:OnSubStart2202509(arg1)
    print("OnSubStart2202509")
end

function Quest22025:OnSubFinish2202509(arg1)
    print("OnSubFinish2202509")
end

function Quest22025:OnSubFailed2202509(arg1)
    print("OnSubFailed2202509")
end

function Quest22025:OnSubStart2202510(arg1)
    print("OnSubStart2202510")
end

function Quest22025:OnSubFinish2202510(arg1)
    print("OnSubFinish2202510")
end

function Quest22025:OnSubFailed2202510(arg1)
    print("OnSubFailed2202510")
end

return Quest22025
