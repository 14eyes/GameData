require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2014 = class("Quest2014", QuestActorProxy)
Quest2014.defaultAlias = "Quest2014"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest2014:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest2014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["201401"] = self.OnSubStart201401,
        ["201402"] = self.OnSubStart201402,
        ["201403"] = self.OnSubStart201403,
        ["201404"] = self.OnSubStart201404,
        ["201405"] = self.OnSubStart201405,
        ["201406"] = self.OnSubStart201406,
        ["201407"] = self.OnSubStart201407,
        ["201408"] = self.OnSubStart201408
    }
end

function Quest2014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["201401"] = self.OnSubFinish201401,
        ["201402"] = self.OnSubFinish201402,
        ["201403"] = self.OnSubFinish201403,
        ["201404"] = self.OnSubFinish201404,
        ["201405"] = self.OnSubFinish201405,
        ["201406"] = self.OnSubFinish201406,
        ["201407"] = self.OnSubFinish201407,
        ["201408"] = self.OnSubFinish201408
    }
end

function Quest2014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["201401"] = self.OnSubFailed201401,
        ["201402"] = self.OnSubFailed201402,
        ["201403"] = self.OnSubFailed201403,
        ["201404"] = self.OnSubFailed201404,
        ["201405"] = self.OnSubFailed201405,
        ["201406"] = self.OnSubFailed201406,
        ["201407"] = self.OnSubFailed201407,
        ["201408"] = self.OnSubFailed201408
    }
end

function Quest2014:Start()
    print("Start")
end

function Quest2014:OnDestroy()
    print("OnDestroy")
end

function Quest2014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2014:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:SpawnGadgetById(201408, 70710504)
    elseif arg1 == 2 then
        self:UnSpawn("Gadget70710504")
    end
end

function Quest2014:OnSubStart201401(arg1)
    print("OnSubStart201401")
    self:CreateQuestNpc(arg1, npcs.Npc1037Data.id, 1)
    actorMgr:CreateActorWithPos("Q2014Trigger", "Actor/Gadget/Q2014Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q201401Target").pos, sceneData:GetDummyPoint(3, "Q201401Target").rot, true, false, 3)
end

function Quest2014:OnSubFinish201401(arg1)
    print("OnSubFinish201401")
end

function Quest2014:OnSubFailed201401(arg1)
    print("OnSubFailed201401")
end

function Quest2014:OnSubStart201402(arg1)
    print("OnSubStart201402")
    self:FinishQuestID(false, 201402)
end

function Quest2014:OnSubFinish201402(arg1)
    print("OnSubFinish201402")
end

function Quest2014:OnSubFailed201402(arg1)
    print("OnSubFailed201402")
end

function Quest2014:OnSubStart201403(arg1)
    print("OnSubStart201403")
    self:NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 2014)
end

function Quest2014:OnSubFinish201403(arg1)
    print("OnSubFinish201403")
    self:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 2014)
end

function Quest2014:OnSubFailed201403(arg1)
    print("OnSubFailed201403")
end

function Quest2014:OnSubStart201404(arg1)
    print("OnSubStart201404")
end

function Quest2014:OnSubFinish201404(arg1)
    print("OnSubFinish201404")
end

function Quest2014:OnSubFailed201404(arg1)
    print("OnSubFailed201404")
end

function Quest2014:OnSubStart201405(arg1)
    print("OnSubStart201405")
    self:CallDelay(2, function(arg1)
        actorMgr:CreateActorWithPos("Q2014Trigger3", "Actor/Gadget/Q2014Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q201403Target").pos, sceneData:GetDummyPoint(3, "Q201403Target").rot, true, false, 3)
    end)
end

function Quest2014:OnSubFinish201405(arg1)
    print("OnSubFinish201405")
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor("Paimon")
        if questNpcActor.uActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest2014:OnSubFailed201405(arg1)
    print("OnSubFailed201405")
end

function Quest2014:OnSubStart201406(arg1)
    print("OnSubStart201406")
    self:GetQuestNpcActor(npcs.Npc1037Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1039Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1039Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q2014Trigger2", "Actor/Gadget/Q2014Trigger2", 70900002, 0, {x = -3799.538, y = 171.9645, z = -706.7216}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest2014:OnSubFinish201406(arg1)
    print("OnSubFinish201406")
end

function Quest2014:OnSubFailed201406(arg1)
    print("OnSubFailed201406")
end

function Quest2014:OnSubStart201407(arg1)
    print("OnSubStart201407")
    self:GetQuestNpcActor(npcs.Npc1037Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1039Data.alias):EnableHeadCtrl(false)
    self:CreateQuestNpc(arg1, npcs.Npc12072Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12072Data.alias)
    questNpcActor:DoFreeStyle(4110, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3146Data.alias, 1, true)
    questNpcActor:LookAt({x = -3975.681, y = 164.9, z = -798.6})
    actorMgr:CreateActorWithPos("Q2014Trigger1", "Actor/Gadget/Q2014Trigger1", 70900002, 0, {x = -3977, y = 164.2329, z = -792.7619}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest2014:OnSubFinish201407(arg1)
    print("OnSubFinish201407")
end

function Quest2014:OnSubFailed201407(arg1)
    print("OnSubFailed201407")
end

function Quest2014:OnSubStart201408(arg1)
    print("OnSubStart201408")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12072Data.alias)
    questNpcActor:DoFreeStyle(4110, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3146Data.alias, 1, true)
    questNpcActor:LookAt({x = -3975.681, y = 164.9, z = -798.6})
    self:RequestInteraction(npcs.Npc12072Data.alias)
end

function Quest2014:OnSubFinish201408(arg1)
    print("OnSubFinish201408")
end

function Quest2014:OnSubFailed201408(arg1)
    print("OnSubFailed201408")
end

return Quest2014
