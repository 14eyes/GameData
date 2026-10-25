require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70503 = class("Quest70503", QuestActorProxy)
Quest70503.defaultAlias = "Quest70503"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest70503:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest70503:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7050301"] = self.OnSubStart7050301,
        ["7050305"] = self.OnSubStart7050305,
        ["7050304"] = self.OnSubStart7050304,
        ["7050302"] = self.OnSubStart7050302,
        ["7050303"] = self.OnSubStart7050303
    }
end

function Quest70503:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7050301"] = self.OnSubFinish7050301,
        ["7050305"] = self.OnSubFinish7050305,
        ["7050304"] = self.OnSubFinish7050304,
        ["7050302"] = self.OnSubFinish7050302,
        ["7050303"] = self.OnSubFinish7050303
    }
end

function Quest70503:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7050302"] = self.OnSubFailed7050302}
end

function Quest70503:Start()
    print("Start")
end

function Quest70503:OnDestroy()
    print("OnDestroy")
end

function Quest70503:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70503:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70503:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 1068)
    actorMgr:GetActor("70503"):UnSpawn(gadgets.Gadget70710666Data.alias)
    actorMgr:DestroyEntityActor("Q70503Trigger", 1068, false)
end

function Quest70503:PaimonDis()
    print("PaimonDis")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest70503:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        if self:GetSubQuestState(7050302) ~= 3 then
            self:ActionSafeCall(function(arg1)
                actorUtils.ShowContext("ActivityBartenderMakePage", 7050302)
                local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1029Data.alias)
                questNpcActor:LookAt({x = -4.556, y = 0.528, z = -6.846})
                questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false)
            end)
        else
            print("error BartenderUI call")
        end
    elseif arg1 == 2 then
        local questNPCActor = actorMgr:GetQuestNPCActor("Npc1045", 70509)
        if questNPCActor ~= nil then
            questNPCActor:EnableHeadCtrl(false)
        else
            print("Shenhe is not here.")
        end
    elseif arg1 == 3 then
        local questNPCActor = actorMgr:GetQuestNPCActor("Npc1045", 70509)
        if questNPCActor ~= nil then
            questNPCActor:EnableHeadCtrl(true)
        else
            print("Shenhe is not here.")
        end
    end
end

function Quest70503:OnSubStart7050301(arg1)
    print("OnSubStart7050301")
    actorMgr:CreateActorWithPos("Q70503Trigger", "Actor/Gadget/Q70503Trigger", 70900002, 0, sceneData:GetDummyPoint(1068, "Q7050202_Trans").pos, sceneData:GetDummyPoint(1068, "Q7050202_Trans").rot, true, false, 1068)
end

function Quest70503:OnSubFinish7050301(arg1)
    print("OnSubFinish7050301")
    self:PaimonDis()
end

function Quest70503:OnSubStart7050305(arg1)
    print("OnSubStart7050305")
end

function Quest70503:OnSubFinish7050305(arg1)
    print("OnSubFinish7050305")
    if self:GetQuestVar(7050305, 1) == 0 then
        self:ShowBlackScreen(0.5, 3, 0.5, nil, function(arg1)
            arg1:SetQuestVar(7050305, 1, 1)
        end, nil, "QUEST_Message_Q70503", false, true)
    end
end

function Quest70503:OnSubStart7050304(arg1)
    print("OnSubStart7050304")
    self:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1029Data.alias)
    questNpcActor:SitOnChair(8010)
    questNpcActor:LookAt({x = -4.556, y = 0.528, z = -6.846})
    questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false)
end

function Quest70503:OnSubFinish7050304(arg1)
    print("OnSubFinish7050304")
end

function Quest70503:OnSubStart7050302(arg1)
    print("OnSubStart7050302")
end

function Quest70503:OnSubFinish7050302(arg1)
    print("OnSubFinish7050302")
end

function Quest70503:OnSubFailed7050302(arg1)
    print("OnSubFailed7050302")
    self:ShowBlackScreen(1, 0.5, 0.5, nil, nil, nil, "", false, true)
end

function Quest70503:OnSubStart7050303(arg1)
    print("OnSubStart7050303")
    self:UnSpawn(gadgets.Gadget70710666Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710666Data.id, 1, 0)
    self:RequestInteraction(npcs.Npc1029Data.alias)
end

function Quest70503:OnSubFinish7050303(arg1)
    print("OnSubFinish7050303")
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 1068)
    self:UnSpawn(gadgets.Gadget70710666Data.alias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1029Data.alias)
    questNpcActor:ClearLookAt()
    questNpcActor:ForceFinishEmoSync(0)
end

return Quest70503
