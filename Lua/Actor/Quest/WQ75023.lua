require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75023 = class("Quest75023", QuestActorProxy)
Quest75023.defaultAlias = "Quest75023"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75023:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7502301"] = self.OnSubStart7502301,
        ["7502303"] = self.OnSubStart7502303,
        ["7502302"] = self.OnSubStart7502302,
        ["7502304"] = self.OnSubStart7502304,
        ["7502309"] = self.OnSubStart7502309,
        ["7502305"] = self.OnSubStart7502305,
        ["7502310"] = self.OnSubStart7502310,
        ["7502311"] = self.OnSubStart7502311,
        ["7502312"] = self.OnSubStart7502312,
        ["7502306"] = self.OnSubStart7502306,
        ["7502307"] = self.OnSubStart7502307,
        ["7502308"] = self.OnSubStart7502308,
        ["7502313"] = self.OnSubStart7502313
    }
end

function Quest75023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7502301"] = self.OnSubFinish7502301,
        ["7502303"] = self.OnSubFinish7502303,
        ["7502302"] = self.OnSubFinish7502302,
        ["7502304"] = self.OnSubFinish7502304,
        ["7502309"] = self.OnSubFinish7502309,
        ["7502305"] = self.OnSubFinish7502305,
        ["7502310"] = self.OnSubFinish7502310,
        ["7502311"] = self.OnSubFinish7502311,
        ["7502312"] = self.OnSubFinish7502312,
        ["7502306"] = self.OnSubFinish7502306,
        ["7502307"] = self.OnSubFinish7502307,
        ["7502308"] = self.OnSubFinish7502308,
        ["7502313"] = self.OnSubFinish7502313
    }
end

function Quest75023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75023:Start()
    print("Start")
end

function Quest75023:OnDestroy()
    print("OnDestroy")
end

function Quest75023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75023:OnSubStart7502301(arg1)
    print("OnSubStart7502301")
    this:CreateQuestNpc(arg1, npcs.Npc21360.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6175.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6175.alias, 75023):HideSelf()
end

function Quest75023:OnSubFinish7502301(arg1)
    print("OnSubFinish7502301")
    this:SafeDestroyQuestNpc(npcs.Npc21360.alias, 3)
end

function Quest75023:OnSubStart7502303(arg1)
    print("OnSubStart7502303")
    this:ActionSafeCall(function(arg1_2)
        this:DeployStoryByQuest(147502300)
        this:CreateQuestNpc(arg1, npcs.Npc6175.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc6175.alias, 75023):ShowSelf()
    end)
end

function Quest75023:OnSubFinish7502303(arg1)
    print("OnSubFinish7502303")
end

function Quest75023:OnSubStart7502302(arg1)
    print("OnSubStart7502302")
end

function Quest75023:OnSubFinish7502302(arg1)
    print("OnSubFinish7502302")
end

function Quest75023:OnSubStart7502304(arg1)
    print("OnSubStart7502304")
    this:DeployStoryByQuest(147502300)
end

function Quest75023:OnSubFinish7502304(arg1)
    print("OnSubFinish7502304")
end

function Quest75023:OnSubStart7502309(arg1)
    print("OnSubStart7502309")
end

function Quest75023:OnSubFinish7502309(arg1)
    print("OnSubFinish7502309")
end

function Quest75023:OnSubStart7502305(arg1)
    print("OnSubStart7502305")
    this:DeployStoryByQuest(147502300)
end

function Quest75023:OnSubFinish7502305(arg1)
    print("OnSubFinish7502305")
end

function Quest75023:OnSubStart7502310(arg1)
    print("OnSubStart7502310")
    this:DeployStoryByQuest(147502300)
end

function Quest75023:OnSubFinish7502310(arg1)
    print("OnSubFinish7502310")
    this:CancelStoryByQuest(147502300)
    this:QuestNarratorTask(datas.NarratorWithId_750239910, nil)
end

function Quest75023:OnSubStart7502311(arg1)
    print("OnSubStart7502311")
end

function Quest75023:OnSubFinish7502311(arg1)
    print("OnSubFinish7502311")
end

function Quest75023:OnSubStart7502312(arg1)
    print("OnSubStart7502312")
    this:RequestInteraction(npcs.Npc6175.alias, "", true)
end

function Quest75023:OnSubFinish7502312(arg1)
    print("OnSubFinish7502312")
end

function Quest75023:OnSubStart7502306(arg1)
    print("OnSubStart7502306")
end

function Quest75023:OnSubFinish7502306(arg1)
    print("OnSubFinish7502306")
end

function Quest75023:OnSubStart7502307(arg1)
    print("OnSubStart7502307")
    actorMgr:CreateActorWithPos("Q7502301Trigger", "Actor/Gadget/Q7502301Trigger", 70900002, 0, points.Q7502301TriggerPoint.pos, points.Q7502301TriggerPoint.rot, true, false, 3)
end

function Quest75023:OnSubFinish7502307(arg1)
    print("OnSubFinish7502307")
    this:SafeDestroyQuestNpc(npcs.Npc6175.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestOrphanNpc(arg1, npcs.Npc6175_1.id, 0, false, 0.5, nil)
    end)
end

function Quest75023:OnSubStart7502308(arg1)
    print("OnSubStart7502308")
    this:CallDelayByQuest("", 3, function(arg1)
        this:RequestInteraction(npcs.Npc6175.alias, "", true)
    end)
end

function Quest75023:OnSubFinish7502308(arg1)
    print("OnSubFinish7502308")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest75023:OnSubStart7502313(arg1)
    print("OnSubStart7502313")
end

function Quest75023:OnSubFinish7502313(arg1)
    print("OnSubFinish7502313")
end

return Quest75023
