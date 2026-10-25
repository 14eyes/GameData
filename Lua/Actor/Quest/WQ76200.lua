require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76200 = class("Quest76200", QuestActorProxy)
Quest76200.defaultAlias = "Quest76200"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76200:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76200:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7620001"] = self.OnSubStart7620001,
        ["7620002"] = self.OnSubStart7620002,
        ["7620003"] = self.OnSubStart7620003,
        ["7620004"] = self.OnSubStart7620004,
        ["7620005"] = self.OnSubStart7620005
    }
end

function Quest76200:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7620001"] = self.OnSubFinish7620001,
        ["7620002"] = self.OnSubFinish7620002,
        ["7620003"] = self.OnSubFinish7620003,
        ["7620004"] = self.OnSubFinish7620004,
        ["7620005"] = self.OnSubFinish7620005
    }
end

function Quest76200:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7620004"] = self.OnSubFailed7620004, ["7620005"] = self.OnSubFailed7620005}
end

function Quest76200:Start()
    print("Start")
end

function Quest76200:OnDestroy()
    print("OnDestroy")
end

function Quest76200:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76200:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76200:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76200:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7620003_TalkTrigger", 76200)
end

function Quest76200:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76200:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76200:OnSubStart7620001(arg1)
    print("OnSubStart7620001")
end

function Quest76200:OnSubFinish7620001(arg1)
    print("OnSubFinish7620001")
end

function Quest76200:OnSubStart7620002(arg1)
    print("OnSubStart7620002")
    this:CreateQuestNpc(arg1, npcs.Npc16562.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16578_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16579_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16578_1.alias, 76200):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16579_1.alias, 76200):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16578_1.alias, 76200):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16579_1.alias, 76200):DoFreeStyle(0, true, nil, true, true, false, true)
end

function Quest76200:OnSubFinish7620002(arg1)
    print("OnSubFinish7620002")
    this:NpcDestroyImmediately(3, npcs.Npc16562.alias)
end

function Quest76200:OnSubStart7620003(arg1)
    print("OnSubStart7620003")
    this:CreateQuestNpc(arg1, npcs.Npc16578_1.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16579_1.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7620003_TalkTrigger", "Actor/Gadget/Q7620003_TalkTrigger", 70900002, 0, points._Q7620003_TalkTriggerPoint_.pos, points._Q7620003_TalkTriggerPoint_.rot, true, false, 3, nil, 0, 76200)
    this:GetQuestNpcActor(npcs.Npc16578_1.alias, 76200):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc16579_1.alias, 76200):DisableInteeHeadCtrl(true)
end

function Quest76200:OnSubFinish7620003(arg1)
    print("OnSubFinish7620003")
end

function Quest76200:OnSubStart7620004(arg1)
    print("OnSubStart7620004")
    this:DisableMainPageByQuest(true, "DisableLNYHumanisticQuest")
    this:DeployStoryByQuest(147620001)
end

function Quest76200:OnSubFinish7620004(arg1)
    print("OnSubFinish7620004")
end

function Quest76200:OnSubFailed7620004(arg1)
    print("OnSubFailed7620004")
    this:RecycleAllRes()
end

function Quest76200:OnSubStart7620005(arg1)
    print("OnSubStart7620005")
    this:DisableMainPageByQuest(true, "DisableLNYHumanisticQuest")
    this:DeployStoryByQuest(147620001)
end

function Quest76200:OnSubFinish7620005(arg1)
    print("OnSubFinish7620005")
    this:DisableMainPageByQuest(false, "DisableLNYHumanisticQuest")
    this:CancelStoryByQuest(147620001)
    this:CallDelayByQuest("7620005Delay", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

function Quest76200:OnSubFailed7620005(arg1)
    print("OnSubFailed7620005")
    this:RecycleAllRes()
end

return Quest76200
