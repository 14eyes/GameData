require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70661 = class("Quest70661", QuestActorProxy)
Quest70661.defaultAlias = "Quest70661"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70661:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70661:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7066101"] = self.OnSubStart7066101,
        ["7066102"] = self.OnSubStart7066102,
        ["7066103"] = self.OnSubStart7066103,
        ["7066104"] = self.OnSubStart7066104,
        ["7066110"] = self.OnSubStart7066110,
        ["7066106"] = self.OnSubStart7066106,
        ["7066109"] = self.OnSubStart7066109,
        ["7066107"] = self.OnSubStart7066107,
        ["7066108"] = self.OnSubStart7066108,
        ["7066105"] = self.OnSubStart7066105
    }
end

function Quest70661:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7066101"] = self.OnSubFinish7066101,
        ["7066102"] = self.OnSubFinish7066102,
        ["7066103"] = self.OnSubFinish7066103,
        ["7066104"] = self.OnSubFinish7066104,
        ["7066110"] = self.OnSubFinish7066110,
        ["7066106"] = self.OnSubFinish7066106,
        ["7066109"] = self.OnSubFinish7066109,
        ["7066107"] = self.OnSubFinish7066107,
        ["7066108"] = self.OnSubFinish7066108,
        ["7066105"] = self.OnSubFinish7066105
    }
end

function Quest70661:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7066101"] = self.OnSubFailed7066101,
        ["7066102"] = self.OnSubFailed7066102,
        ["7066103"] = self.OnSubFailed7066103,
        ["7066104"] = self.OnSubFailed7066104,
        ["7066110"] = self.OnSubFailed7066110,
        ["7066106"] = self.OnSubFailed7066106,
        ["7066109"] = self.OnSubFailed7066109,
        ["7066107"] = self.OnSubFailed7066107,
        ["7066108"] = self.OnSubFailed7066108,
        ["7066105"] = self.OnSubFailed7066105
    }
end

function Quest70661:Start()
    print("Start")
end

function Quest70661:OnDestroy()
    print("OnDestroy")
end

function Quest70661:OnMainFinished(arg1)
    print("OnMainFinished")
    self:LightNotifyTo(npcs.NPC1512Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1673Data.alias, 0, true)
end

function Quest70661:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70661:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.NPC1512Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1673Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc167301Data.alias, 3)
end

function Quest70661:HideNuntuck()
    print("HideNuntuck")
    self:NotifyTo(npcs.Npc1673Data.alias, 1, true)
end

function Quest70661:ShowGuide()
    print("ShowGuide")
    globalActor:StartGuide("GuideFishRecipe")
end

function Quest70661:OnSubStart7066101(arg1)
    print("OnSubStart7066101")
    self:NotifyTo(npcs.NPC1512Data.alias, 2, true)
end

function Quest70661:OnSubFinish7066101(arg1)
    print("OnSubFinish7066101")
end

function Quest70661:OnSubFailed7066101(arg1)
    print("OnSubFailed7066101")
end

function Quest70661:OnSubStart7066102(arg1)
    print("OnSubStart7066102")
end

function Quest70661:OnSubFinish7066102(arg1)
    print("OnSubFinish7066102")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:ActionSafeCall(self.HideNuntuck)
end

function Quest70661:OnSubFailed7066102(arg1)
    print("OnSubFailed7066102")
end

function Quest70661:OnSubStart7066103(arg1)
    print("OnSubStart7066103")
    self:CreateQuestNpc(arg1, npcs.Npc167301Data.id, 1)
    self:HideNuntuck()
end

function Quest70661:OnSubFinish7066103(arg1)
    print("OnSubFinish7066103")
end

function Quest70661:OnSubFailed7066103(arg1)
    print("OnSubFailed7066103")
end

function Quest70661:OnSubStart7066104(arg1)
    print("OnSubStart7066104")
    self:NotifyTo(npcs.Npc1673Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc167301Data.id, 1)
end

function Quest70661:OnSubFinish7066104(arg1)
    print("OnSubFinish7066104")
    self:ShowGuide()
end

function Quest70661:OnSubFailed7066104(arg1)
    print("OnSubFailed7066104")
end

function Quest70661:OnSubStart7066110(arg1)
    print("OnSubStart7066110")
end

function Quest70661:OnSubFinish7066110(arg1)
    print("OnSubFinish7066110")
end

function Quest70661:OnSubFailed7066110(arg1)
    print("OnSubFailed7066110")
end

function Quest70661:OnSubStart7066106(arg1)
    print("OnSubStart7066106")
    self:NotifyTo(npcs.Npc1673Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc167301Data.id, 1)
end

function Quest70661:OnSubFinish7066106(arg1)
    print("OnSubFinish7066106")
end

function Quest70661:OnSubFailed7066106(arg1)
    print("OnSubFailed7066106")
end

function Quest70661:OnSubStart7066109(arg1)
    print("OnSubStart7066109")
    self:NotifyTo(npcs.Npc1673Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc167301Data.id, 1)
end

function Quest70661:OnSubFinish7066109(arg1)
    print("OnSubFinish7066109")
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc1673Data.alias, 0, true)
    end)

    self:ShowBlackScreen(0.3, 1.2, 0.3, nil, nil, nil, "", false, true)
    self:SafeDestroyQuestNpc(npcs.Npc167301Data.alias, 3)
end

function Quest70661:OnSubFailed7066109(arg1)
    print("OnSubFailed7066109")
end

function Quest70661:OnSubStart7066107(arg1)
    print("OnSubStart7066107")
end

function Quest70661:OnSubFinish7066107(arg1)
    print("OnSubFinish7066107")
    self:LightNotifyTo(npcs.Npc1673Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc167301Data.alias, 3)
end

function Quest70661:OnSubFailed7066107(arg1)
    print("OnSubFailed7066107")
end

function Quest70661:OnSubStart7066108(arg1)
    print("OnSubStart7066108")
end

function Quest70661:OnSubFinish7066108(arg1)
    print("OnSubFinish7066108")
end

function Quest70661:OnSubFailed7066108(arg1)
    print("OnSubFailed7066108")
end

function Quest70661:OnSubStart7066105(arg1)
    print("OnSubStart7066105")
end

function Quest70661:OnSubFinish7066105(arg1)
    print("OnSubFinish7066105")
end

function Quest70661:OnSubFailed7066105(arg1)
    print("OnSubFailed7066105")
end

return Quest70661
