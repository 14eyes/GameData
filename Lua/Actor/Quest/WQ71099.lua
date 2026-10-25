require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71099 = class("Quest71099", QuestActorProxy)
Quest71099.defaultAlias = "Quest71099"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest71099:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest71099:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7109901"] = self.OnSubStart7109901,
        ["7109902"] = self.OnSubStart7109902,
        ["7109903"] = self.OnSubStart7109903,
        ["7109904"] = self.OnSubStart7109904,
        ["7109905"] = self.OnSubStart7109905,
        ["7109906"] = self.OnSubStart7109906,
        ["7109907"] = self.OnSubStart7109907,
        ["7109908"] = self.OnSubStart7109908,
        ["7109909"] = self.OnSubStart7109909,
        ["7109910"] = self.OnSubStart7109910,
        ["7109911"] = self.OnSubStart7109911
    }
end

function Quest71099:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7109901"] = self.OnSubFinish7109901,
        ["7109902"] = self.OnSubFinish7109902,
        ["7109903"] = self.OnSubFinish7109903,
        ["7109904"] = self.OnSubFinish7109904,
        ["7109905"] = self.OnSubFinish7109905,
        ["7109906"] = self.OnSubFinish7109906,
        ["7109907"] = self.OnSubFinish7109907,
        ["7109908"] = self.OnSubFinish7109908,
        ["7109909"] = self.OnSubFinish7109909,
        ["7109910"] = self.OnSubFinish7109910,
        ["7109911"] = self.OnSubFinish7109911
    }
end

function Quest71099:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71099:Start()
    print("Start")
end

function Quest71099:OnDestroy()
    print("OnDestroy")
end

function Quest71099:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71099:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71099:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71099:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest71099:OnSubStart7109901(arg1)
    print("OnSubStart7109901")
    self:CreateQuestNpc(arg1, npcs.Npc2010Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc2010Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
end

function Quest71099:OnSubFinish7109901(arg1)
    print("OnSubFinish7109901")
end

function Quest71099:OnSubStart7109902(arg1)
    print("OnSubStart7109902")
    self:CreateQuestNpc(arg1, npcs.Npc2310Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc2306Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7109902Trigger", "Actor/Gadget/Q7109902Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7109902_N2310").pos, sceneData:GetDummyPoint(3, "Q7109902_N2310").rot, true, false, 3)
end

function Quest71099:OnSubFinish7109902(arg1)
    print("OnSubFinish7109902")
end

function Quest71099:OnSubStart7109903(arg1)
    print("OnSubStart7109903")
    self:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
end

function Quest71099:OnSubFinish7109903(arg1)
    print("OnSubFinish7109903")
end

function Quest71099:OnSubStart7109904(arg1)
    print("OnSubStart7109904")
    self:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
end

function Quest71099:OnSubFinish7109904(arg1)
    print("OnSubFinish7109904")
end

function Quest71099:OnSubStart7109905(arg1)
    print("OnSubStart7109905")
    self:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    self:UnSpawn(gadgets.Gadget70710721Data.alias)
end

function Quest71099:OnSubFinish7109905(arg1)
    print("OnSubFinish7109905")
    self:SafeDestroyQuestNpc(npcs.Npc2010Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2306Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12641Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710721Data.alias)
end

function Quest71099:OnSubStart7109906(arg1)
    print("OnSubStart7109906")
    self:DailyNpcSafeHideSelf(npcs.Npc2010Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2011Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
end

function Quest71099:OnSubFinish7109906(arg1)
    print("OnSubFinish7109906")
    self:SafeDestroyQuestNpc(npcs.Npc2310Data.alias, 3)
end

function Quest71099:OnSubStart7109907(arg1)
    print("OnSubStart7109907")
    self:CreateQuestNpc(arg1, npcs.Npc2011Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12641Data.id, 4)
    self:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    self:CreateQuestNpcWithTrigger("Q7109907NPCTrigger", 7109907, 2010, 1, 4)
end

function Quest71099:OnSubFinish7109907(arg1)
    print("OnSubFinish7109907")
    self:SafeDestroyQuestNpc(npcs.Npc2010Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1046Data.alias, 3)
end

function Quest71099:OnSubStart7109908(arg1)
    print("OnSubStart7109908")
    self:DailyNpcSafeHideSelf(npcs.Npc2010Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12641Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12641Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    self:CreateQuestNpcWithTriggerBlack("Q7109908Trigger", 7109908, 1046, 2, 3, 1)
end

function Quest71099:OnSubFinish7109908(arg1)
    print("OnSubFinish7109908")
    self:SafeDestroyQuestNpc(npcs.Npc1046Data.alias, 3)
end

function Quest71099:OnSubStart7109909(arg1)
    print("OnSubStart7109909")
    self:DailyNpcSafeHideSelf(npcs.Npc2010Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12641Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
end

function Quest71099:OnSubFinish7109909(arg1)
    print("OnSubFinish7109909")
end

function Quest71099:OnSubStart7109910(arg1)
    print("OnSubStart7109910")
    self:GetQuestNpcActor(npcs.Npc12641Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
    self:UnSpawn(gadgets.Gadget70710777Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710777Data.id, 1, 0)
end

function Quest71099:OnSubFinish7109910(arg1)
    print("OnSubFinish7109910")
    self:UnSpawn(gadgets.Gadget70710777Data.alias)
end

function Quest71099:OnSubStart7109911(arg1)
    print("OnSubStart7109911")
    self:DailyNpcSafeHideSelf(npcs.Npc1626Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc2062Data.alias, 1, true)
end

function Quest71099:OnSubFinish7109911(arg1)
    print("OnSubFinish7109911")
    self:SafeDestroyQuestNpc(npcs.Npc2010Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2011Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1046Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12641Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1626Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2062Data.alias, 0, true)
end

return Quest71099
