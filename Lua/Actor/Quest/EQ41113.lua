require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41113 = class("Quest41113", QuestActorProxy)
Quest41113.defaultAlias = "Quest41113"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local points
local datas

function Quest41113:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    points = clientData.Points
    datas = clientData.Datas
end

function Quest41113:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4111301"] = self.OnSubStart4111301,
        ["4111318"] = self.OnSubStart4111318,
        ["4111302"] = self.OnSubStart4111302,
        ["4111303"] = self.OnSubStart4111303,
        ["4111304"] = self.OnSubStart4111304,
        ["4111305"] = self.OnSubStart4111305,
        ["4111306"] = self.OnSubStart4111306,
        ["4111310"] = self.OnSubStart4111310,
        ["4111312"] = self.OnSubStart4111312,
        ["4111313"] = self.OnSubStart4111313,
        ["4111314"] = self.OnSubStart4111314,
        ["4111320"] = self.OnSubStart4111320,
        ["4111311"] = self.OnSubStart4111311,
        ["4111315"] = self.OnSubStart4111315,
        ["4111307"] = self.OnSubStart4111307,
        ["4111316"] = self.OnSubStart4111316,
        ["4111308"] = self.OnSubStart4111308,
        ["4111319"] = self.OnSubStart4111319,
        ["4111317"] = self.OnSubStart4111317,
        ["4111309"] = self.OnSubStart4111309
    }
end

function Quest41113:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4111301"] = self.OnSubFinish4111301,
        ["4111318"] = self.OnSubFinish4111318,
        ["4111302"] = self.OnSubFinish4111302,
        ["4111303"] = self.OnSubFinish4111303,
        ["4111304"] = self.OnSubFinish4111304,
        ["4111305"] = self.OnSubFinish4111305,
        ["4111306"] = self.OnSubFinish4111306,
        ["4111310"] = self.OnSubFinish4111310,
        ["4111312"] = self.OnSubFinish4111312,
        ["4111313"] = self.OnSubFinish4111313,
        ["4111314"] = self.OnSubFinish4111314,
        ["4111320"] = self.OnSubFinish4111320,
        ["4111311"] = self.OnSubFinish4111311,
        ["4111315"] = self.OnSubFinish4111315,
        ["4111307"] = self.OnSubFinish4111307,
        ["4111316"] = self.OnSubFinish4111316,
        ["4111308"] = self.OnSubFinish4111308,
        ["4111319"] = self.OnSubFinish4111319,
        ["4111317"] = self.OnSubFinish4111317,
        ["4111309"] = self.OnSubFinish4111309
    }
end

function Quest41113:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4111301"] = self.OnSubFailed4111301,
        ["4111318"] = self.OnSubFailed4111318,
        ["4111302"] = self.OnSubFailed4111302,
        ["4111303"] = self.OnSubFailed4111303,
        ["4111304"] = self.OnSubFailed4111304,
        ["4111305"] = self.OnSubFailed4111305,
        ["4111306"] = self.OnSubFailed4111306,
        ["4111310"] = self.OnSubFailed4111310,
        ["4111312"] = self.OnSubFailed4111312,
        ["4111313"] = self.OnSubFailed4111313,
        ["4111314"] = self.OnSubFailed4111314,
        ["4111320"] = self.OnSubFailed4111320,
        ["4111311"] = self.OnSubFailed4111311,
        ["4111315"] = self.OnSubFailed4111315,
        ["4111307"] = self.OnSubFailed4111307,
        ["4111316"] = self.OnSubFailed4111316,
        ["4111308"] = self.OnSubFailed4111308,
        ["4111319"] = self.OnSubFailed4111319,
        ["4111317"] = self.OnSubFailed4111317,
        ["4111309"] = self.OnSubFailed4111309
    }
end

function Quest41113:Start()
    print("Start")
end

function Quest41113:OnDestroy()
    print("OnDestroy")
end

function Quest41113:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41113:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41113:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self.ActionSafeCall(self, function()
        self:DestroyQuestNpcActor(npcs.Npc10095Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc10011Data.alias, 3)
        self:DestroyQuestNpcActor(npcs.Npc30026Data.alias, 3)
        self:GetQuestNpcActor(npcs.Npc10012Data.alias):DestroyWithDisappear(false)
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        self:NotifyTo("Npc1657", 0, true)
        self:UnSpawn(gadgets.Q4111303Target.alias)
        self:UnSpawn(gadgets.Q4111304Target.alias)
        self:UnSpawn(datas.Q41113Trigger_.alias)
        self:UnSpawn(datas.Q41113Trigger2_.alias)
        self:UnSpawn(datas.Q41113Trigger3_.alias)
    end)
end

function Quest41113:DestroyAllNpc()
    print("DestroyAllNpc")
    self:DestroyQuestNpcActor(npcs.Npc10095Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10011Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc10012Data.alias):DestroyWithDisappear(false)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest41113:OnSubStart4111301(arg1)
    print("OnSubStart4111301")
    self.NotifyTo(self, npcs.Npc30015Data.alias, 1, true)
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc10095Data.id, 0)
    end)
end

function Quest41113:OnSubFinish4111301(arg1)
    print("OnSubFinish4111301")
    self.NotifyTo(self, npcs.Npc30015Data.alias, 0, true)
    self.ActionSafeCall(self, function()
        self:DestroyAllNpc()
    end)
end

function Quest41113:OnSubFailed4111301(arg1)
    print("OnSubFailed4111301")
end

function Quest41113:OnSubStart4111318(arg1)
    print("OnSubStart4111318")
    actorMgr:CreateActorWithPos(datas.Q41113Trigger2_.alias, datas.Q41113Trigger2_.script, datas.Q41113Trigger2_.id, 0, datas.Q41113Trigger2_.point.pos, datas.Q41113Trigger2_.point.rot, true, false, 3)
end

function Quest41113:OnSubFinish4111318(arg1)
    print("OnSubFinish4111318")
end

function Quest41113:OnSubFailed4111318(arg1)
    print("OnSubFailed4111318")
end

function Quest41113:OnSubStart4111302(arg1)
    print("OnSubStart4111302")
end

function Quest41113:OnSubFinish4111302(arg1)
    print("OnSubFinish4111302")
    self:ActionSafeCall(self.DestroyAllNpc)
end

function Quest41113:OnSubFailed4111302(arg1)
    print("OnSubFailed4111302")
end

function Quest41113:OnSubStart4111303(arg1)
    print("OnSubStart4111303")
    self:SpawnGadget(arg1, gadgets.Q4111303Target.id, 1)
end

function Quest41113:OnSubFinish4111303(arg1)
    print("OnSubFinish4111303")
    self:UnSpawn(gadgets.Q4111303Target.alias)
end

function Quest41113:OnSubFailed4111303(arg1)
    print("OnSubFailed4111303")
end

function Quest41113:OnSubStart4111304(arg1)
    print("OnSubStart4111304")
    self:SpawnGadget(arg1, gadgets.Q4111304Target.id, 1)
end

function Quest41113:OnSubFinish4111304(arg1)
    print("OnSubFinish4111304")
    self:UnSpawn(gadgets.Q4111304Target.alias)
end

function Quest41113:OnSubFailed4111304(arg1)
    print("OnSubFailed4111304")
end

function Quest41113:OnSubStart4111305(arg1)
    print("OnSubStart4111305")
end

function Quest41113:OnSubFinish4111305(arg1)
    print("OnSubFinish4111305")
end

function Quest41113:OnSubFailed4111305(arg1)
    print("OnSubFailed4111305")
end

function Quest41113:OnSubStart4111306(arg1)
    print("OnSubStart4111306")
end

function Quest41113:OnSubFinish4111306(arg1)
    print("OnSubFinish4111306")
end

function Quest41113:OnSubFailed4111306(arg1)
    print("OnSubFailed4111306")
end

function Quest41113:OnSubStart4111310(arg1)
    print("OnSubStart4111310")
end

function Quest41113:OnSubFinish4111310(arg1)
    print("OnSubFinish4111310")
    self:ActionSafeCall(self.DestroyAllNpc)
end

function Quest41113:OnSubFailed4111310(arg1)
    print("OnSubFailed4111310")
end

function Quest41113:OnSubStart4111312(arg1)
    print("OnSubStart4111312")
end

function Quest41113:OnSubFinish4111312(arg1)
    print("OnSubFinish4111312")
    self:ActionSafeCall(self.DestroyAllNpc)
end

function Quest41113:OnSubFailed4111312(arg1)
    print("OnSubFailed4111312")
end

function Quest41113:OnSubStart4111313(arg1)
    print("OnSubStart4111313")
end

function Quest41113:OnSubFinish4111313(arg1)
    print("OnSubFinish4111313")
    self:ActionSafeCall(self.DestroyAllNpc)
end

function Quest41113:OnSubFailed4111313(arg1)
    print("OnSubFailed4111313")
end

function Quest41113:OnSubStart4111314(arg1)
    print("OnSubStart4111314")
    self:CreateQuestNpc(arg1, npcs.Npc30026Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc30026Data.alias):DoFreeStyle(4120, true, nil, true, true)
end

function Quest41113:OnSubFinish4111314(arg1)
    print("OnSubFinish4111314")
    self:ActionSafeCall(self.DestroyAllNpc)
end

function Quest41113:OnSubFailed4111314(arg1)
    print("OnSubFailed4111314")
end

function Quest41113:OnSubStart4111320(arg1)
    print("OnSubStart4111320")
    self:GetQuestNpcActor(npcs.Npc30026Data.alias):DoFreeStyle(4120, false, nil, true, true)
end

function Quest41113:OnSubFinish4111320(arg1)
    print("OnSubFinish4111320")
end

function Quest41113:OnSubFailed4111320(arg1)
    print("OnSubFailed4111320")
end

function Quest41113:OnSubStart4111311(arg1)
    print("OnSubStart4111311")
    self:GetQuestNpcActor(npcs.Npc30026Data.alias):DoFreeStyle(4120, true, nil, true, true)
end

function Quest41113:OnSubFinish4111311(arg1)
    print("OnSubFinish4111311")
end

function Quest41113:OnSubFailed4111311(arg1)
    print("OnSubFailed4111311")
end

function Quest41113:OnSubStart4111315(arg1)
    print("OnSubStart4111315")
end

function Quest41113:OnSubFinish4111315(arg1)
    print("OnSubFinish4111315")
    self.ShowBlackScreen(self, 0.5, 1.5, 0.5, function()
        self:GetQuestNpcActor(npcs.Npc30026Data.alias):Destroy(false)
        self:DestroyQuestNpcActor(npcs.Npc10011Data.alias, 3)
    end, function()
        self:GetQuestNpcActor(npcs.Npc10012Data.alias):DestroyWithDisappear(false)
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest41113:OnSubFailed4111315(arg1)
    print("OnSubFailed4111315")
end

function Quest41113:OnSubStart4111307(arg1)
    print("OnSubStart4111307")
    self:CreateQuestNpc(arg1, npcs.Npc10095Data2.id, 0)
    self:NotifyTo(npcs.Npc30015Data.alias, 1, true)
end

function Quest41113:OnSubFinish4111307(arg1)
    print("OnSubFinish4111307")
    self:ActionSafeCall(self.DestroyAllNpc)
end

function Quest41113:OnSubFailed4111307(arg1)
    print("OnSubFailed4111307")
end

function Quest41113:OnSubStart4111316(arg1)
    print("OnSubStart4111316")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc10095Data3.alias})
    self.ActionSafeCall(self, function()
        self:PlayCutsceneIndex(4111308, function()
            self:TransmitPlayerByQuestId(4111308, 1, nil, function()
                self:ShowBlackScreen(0.5, 1, 0.5, function()
                    self:CreateQuestNpc(arg1, npcs.Npc10095Data3.id, 0)
                end, nil, questNpcCreateTask)
            end)
        end)
    end)

    self.NotifyTo(self, "Npc1657", NpcUtil.NpcEventType.HIDESELF, true)
    actorMgr:CreateActorWithPos(datas.Q41113Trigger4_.alias, datas.Q41113Trigger4_.script, datas.Q41113Trigger4_.id, 0, datas.Q41113Trigger4_.point.pos, datas.Q41113Trigger4_.point.rot, true, false, 3)
end

function Quest41113:OnSubFinish4111316(arg1)
    print("OnSubFinish4111316")
end

function Quest41113:OnSubFailed4111316(arg1)
    print("OnSubFailed4111316")
end

function Quest41113:OnSubStart4111308(arg1)
    print("OnSubStart4111308")
    self:RequestInteraction(npcs.Npc30015Data.alias)
end

function Quest41113:OnSubFinish4111308(arg1)
    print("OnSubFinish4111308")
    self:ActionSafeCall(self.DestroyAllNpc)
end

function Quest41113:OnSubFailed4111308(arg1)
    print("OnSubFailed4111308")
end

function Quest41113:OnSubStart4111319(arg1)
    print("OnSubStart4111319")
    actorMgr:CreateActorWithPos(datas.Q41113Trigger3_.alias, datas.Q41113Trigger3_.script, datas.Q41113Trigger3_.id, 0, datas.Q41113Trigger3_.point.pos, datas.Q41113Trigger3_.point.rot, true, false, 3)
    self:NotifyTo(npcs.Npc30015Data.alias, 0, true)
end

function Quest41113:OnSubFinish4111319(arg1)
    print("OnSubFinish4111319")
    self:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 41113)
end

function Quest41113:OnSubFailed4111319(arg1)
    print("OnSubFailed4111319")
end

function Quest41113:OnSubStart4111317(arg1)
    print("OnSubStart4111317")
    actorMgr:CreateActorWithPos(datas.Q41113Trigger_.alias, datas.Q41113Trigger_.script, datas.Q41113Trigger_.id, 0, datas.Q41113Trigger_.point.pos, datas.Q41113Trigger_.point.rot, true, false, 3)
    self:NotifyTo("Npc1657", 0, true)
end

function Quest41113:OnSubFinish4111317(arg1)
    print("OnSubFinish4111317")
end

function Quest41113:OnSubFailed4111317(arg1)
    print("OnSubFailed4111317")
end

function Quest41113:OnSubStart4111309(arg1)
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc10011Data.alias})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10011Data.id)
        arg1_2:RequestInteraction(npcs.Npc10011Data.alias)
    end, nil, questNpcCreateTask)
end

function Quest41113:OnSubFinish4111309(arg1)
    print("OnSubFinish4111309")
    self.ActionSafeCall(self, function()
        self:DestroyAllNpc()
        self:ShowTutorialDialog(902, function()
            self:ShowActivityAsterPage()
        end)
    end)
end

function Quest41113:OnSubFailed4111309(arg1)
    print("OnSubFailed4111309")
end

return Quest41113
