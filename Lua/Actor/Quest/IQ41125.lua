require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41125 = class("Quest41125", QuestActorProxy)
Quest41125.defaultAlias = "Quest41125"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest41125:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest41125:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4112501"] = self.OnSubStart4112501,
        ["4112521"] = self.OnSubStart4112521,
        ["4112520"] = self.OnSubStart4112520,
        ["4112502"] = self.OnSubStart4112502,
        ["4112503"] = self.OnSubStart4112503,
        ["4112504"] = self.OnSubStart4112504,
        ["4112505"] = self.OnSubStart4112505,
        ["4112506"] = self.OnSubStart4112506,
        ["4112509"] = self.OnSubStart4112509,
        ["4112513"] = self.OnSubStart4112513,
        ["4112510"] = self.OnSubStart4112510,
        ["4112512"] = self.OnSubStart4112512,
        ["4112507"] = self.OnSubStart4112507,
        ["4112517"] = self.OnSubStart4112517,
        ["4112511"] = self.OnSubStart4112511,
        ["4112522"] = self.OnSubStart4112522,
        ["4112523"] = self.OnSubStart4112523,
        ["4112508"] = self.OnSubStart4112508,
        ["4112519"] = self.OnSubStart4112519,
        ["4112515"] = self.OnSubStart4112515,
        ["4112514"] = self.OnSubStart4112514,
        ["4112516"] = self.OnSubStart4112516,
        ["4112518"] = self.OnSubStart4112518,
        ["4112524"] = self.OnSubStart4112524
    }
end

function Quest41125:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4112501"] = self.OnSubFinish4112501,
        ["4112521"] = self.OnSubFinish4112521,
        ["4112520"] = self.OnSubFinish4112520,
        ["4112502"] = self.OnSubFinish4112502,
        ["4112503"] = self.OnSubFinish4112503,
        ["4112504"] = self.OnSubFinish4112504,
        ["4112505"] = self.OnSubFinish4112505,
        ["4112506"] = self.OnSubFinish4112506,
        ["4112509"] = self.OnSubFinish4112509,
        ["4112513"] = self.OnSubFinish4112513,
        ["4112510"] = self.OnSubFinish4112510,
        ["4112512"] = self.OnSubFinish4112512,
        ["4112507"] = self.OnSubFinish4112507,
        ["4112517"] = self.OnSubFinish4112517,
        ["4112511"] = self.OnSubFinish4112511,
        ["4112522"] = self.OnSubFinish4112522,
        ["4112523"] = self.OnSubFinish4112523,
        ["4112508"] = self.OnSubFinish4112508,
        ["4112519"] = self.OnSubFinish4112519,
        ["4112515"] = self.OnSubFinish4112515,
        ["4112514"] = self.OnSubFinish4112514,
        ["4112516"] = self.OnSubFinish4112516,
        ["4112518"] = self.OnSubFinish4112518,
        ["4112524"] = self.OnSubFinish4112524
    }
end

function Quest41125:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4112501"] = self.OnSubFailed4112501,
        ["4112521"] = self.OnSubFailed4112521,
        ["4112520"] = self.OnSubFailed4112520,
        ["4112502"] = self.OnSubFailed4112502,
        ["4112503"] = self.OnSubFailed4112503,
        ["4112504"] = self.OnSubFailed4112504,
        ["4112505"] = self.OnSubFailed4112505,
        ["4112506"] = self.OnSubFailed4112506,
        ["4112509"] = self.OnSubFailed4112509,
        ["4112513"] = self.OnSubFailed4112513,
        ["4112510"] = self.OnSubFailed4112510,
        ["4112512"] = self.OnSubFailed4112512,
        ["4112507"] = self.OnSubFailed4112507,
        ["4112517"] = self.OnSubFailed4112517,
        ["4112511"] = self.OnSubFailed4112511,
        ["4112522"] = self.OnSubFailed4112522,
        ["4112523"] = self.OnSubFailed4112523,
        ["4112508"] = self.OnSubFailed4112508,
        ["4112519"] = self.OnSubFailed4112519,
        ["4112515"] = self.OnSubFailed4112515,
        ["4112514"] = self.OnSubFailed4112514,
        ["4112516"] = self.OnSubFailed4112516,
        ["4112518"] = self.OnSubFailed4112518,
        ["4112524"] = self.OnSubFailed4112524
    }
end

function Quest41125:Start()
    print("Start")
end

function Quest41125:OnDestroy()
    print("OnDestroy")
end

function Quest41125:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41125:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41125:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc141301Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc157701Data2.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc157701Data3.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc157701Data1.alias, 3)
    self:NotifyTo("Npc1413", 0, true)
    self:NotifyTo("Npc1577", 0, true)
    self:UnSpawn(gadgets.GadgetData1.alias)
    self:UnSpawn(gadgets.GadgetData3.alias)
    self:UnSpawn(gadgets.GadgetData2.alias)
end

function Quest41125:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:SetQuestVar(4112518, 1, 1)
        local questVar = self:GetQuestVar(4112518, 2)
        local v = self:GetQuestVar(4112518, 3)
        if questVar == 1 and v == 1 then
            self:SetQuestVar(4112518, 4, 1)
        end
    elseif arg1 == 2 then
        self:SetQuestVar(4112518, 2, 1)
        local questVar = self:GetQuestVar(4112518, 1)
        local v = self:GetQuestVar(4112518, 3)
        if questVar == 1 and v == 1 then
            self:SetQuestVar(4112518, 4, 1)
        end
    elseif arg1 == 3 then
        self:SetQuestVar(4112518, 3, 1)
        local questVar = self:GetQuestVar(4112518, 1)
        local v = self:GetQuestVar(4112518, 2)
        if questVar == 1 and v == 1 then
            self:SetQuestVar(4112518, 4, 1)
        end
    end
end

function Quest41125:destory()
    print("destory")
    self:DestroyQuestNpcActor(npcs.Npc141301Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc157701Data2.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc157701Data3.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc157701Data1.alias, 3)
    self:NotifyTo("Npc1413", 0, true)
    self:NotifyTo("Npc1577", 0, true)
    self:UnSpawn(gadgets.GadgetData1.alias)
    self:UnSpawn(gadgets.GadgetData3.alias)
    self:UnSpawn(gadgets.GadgetData2.alias)
end

function Quest41125:OnSubStart4112501(arg1)
    print("OnSubStart4112501")
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
    self:NotifyTo("Npc1413", 1, true)
end

function Quest41125:OnSubFinish4112501(arg1)
    print("OnSubFinish4112501")
end

function Quest41125:OnSubFailed4112501(arg1)
    print("OnSubFailed4112501")
end

function Quest41125:OnSubStart4112521(arg1)
    local n = math.random(2, 4)
    self:SetQuestVar(arg1.QuestConfigId, 0, n)
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112521(arg1)
    print("OnSubFinish4112521")
end

function Quest41125:OnSubFailed4112521(arg1)
    print("OnSubFailed4112521")
end

function Quest41125:OnSubStart4112520(arg1)
    print("OnSubStart4112520")
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112520(arg1)
    print("OnSubFinish4112520")
end

function Quest41125:OnSubFailed4112520(arg1)
    print("OnSubFailed4112520")
end

function Quest41125:OnSubStart4112502(arg1)
    print("OnSubStart4112502")
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112502(arg1)
    print("OnSubFinish4112502")
end

function Quest41125:OnSubFailed4112502(arg1)
    print("OnSubFailed4112502")
end

function Quest41125:OnSubStart4112503(arg1)
    print("OnSubStart4112503")
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112503(arg1)
    print("OnSubFinish4112503")
end

function Quest41125:OnSubFailed4112503(arg1)
    print("OnSubFailed4112503")
end

function Quest41125:OnSubStart4112504(arg1)
    print("OnSubStart4112504")
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112504(arg1)
    print("OnSubFinish4112504")
end

function Quest41125:OnSubFailed4112504(arg1)
    print("OnSubFailed4112504")
end

function Quest41125:OnSubStart4112505(arg1)
    print("OnSubStart4112505")
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112505(arg1)
    print("OnSubFinish4112505")
end

function Quest41125:OnSubFailed4112505(arg1)
    print("OnSubFailed4112505")
end

function Quest41125:OnSubStart4112506(arg1)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:SpawnGadget(arg1, 70710188, 1)
    if self:GetQuestVar(arg1.QuestConfigId, 0) == 3 then
        self:CreateQuestNpc(arg1, npcs.Npc157701Data1.id, 0)
    end
end

function Quest41125:OnSubFinish4112506(arg1)
    print("OnSubFinish4112506")
end

function Quest41125:OnSubFailed4112506(arg1)
    print("OnSubFailed4112506")
end

function Quest41125:OnSubStart4112509(arg1)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    if questVar == 1 or questVar == 2 then
        self:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTask({{dialogID = 411250401, duration = 2}})
        end)
    elseif questVar == 3 then
        self:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTask({{dialogID = 411250403, duration = 2}, {dialogID = 411250404, duration = 2}})
        end)
    elseif questVar == 4 then
        self:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTask({{dialogID = 411250405, duration = 2}})
        end)
    end

    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q41125palade1").pos, 0, 5, true)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112509(arg1)
    print("OnSubFinish4112509")
end

function Quest41125:OnSubFailed4112509(arg1)
    print("OnSubFailed4112509")
end

function Quest41125:OnSubStart4112513(arg1)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112513(arg1)
    print("OnSubFinish4112513")
end

function Quest41125:OnSubFailed4112513(arg1)
    print("OnSubFailed4112513")
end

function Quest41125:OnSubStart4112510(arg1)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc157701Data1.id, 0)
end

function Quest41125:OnSubFinish4112510(arg1)
    print("OnSubFinish4112510")
end

function Quest41125:OnSubFailed4112510(arg1)
    print("OnSubFailed4112510")
end

function Quest41125:OnSubStart4112512(arg1)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112512(arg1)
    print("OnSubFinish4112512")
end

function Quest41125:OnSubFailed4112512(arg1)
    print("OnSubFailed4112512")
end

function Quest41125:OnSubStart4112507(arg1)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:SpawnGadget(arg1, 70710189, 1)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    if questVar == 1 or questVar == 4 then
        self:CreateQuestNpc(arg1, npcs.Npc157701Data2.id, 0)
    end
end

function Quest41125:OnSubFinish4112507(arg1)
    print("OnSubFinish4112507")
end

function Quest41125:OnSubFailed4112507(arg1)
    print("OnSubFailed4112507")
end

function Quest41125:OnSubStart4112517(arg1)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    if questVar == 1 or questVar == 4 then
        self:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTask({{dialogID = 411250403, duration = 2}, {dialogID = 411250404, duration = 2}})
        end)
    elseif questVar == 2 or questVar == 3 then
        self:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTask({{dialogID = 411250405, duration = 2}})
        end)
    end

    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q41125palade2").pos, 0, 5, true)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112517(arg1)
    print("OnSubFinish4112517")
end

function Quest41125:OnSubFailed4112517(arg1)
    print("OnSubFailed4112517")
end

function Quest41125:OnSubStart4112511(arg1)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc157701Data2.id, 0)
end

function Quest41125:OnSubFinish4112511(arg1)
    print("OnSubFinish4112511")
end

function Quest41125:OnSubFailed4112511(arg1)
    print("OnSubFailed4112511")
end

function Quest41125:OnSubStart4112522(arg1)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112522(arg1)
    print("OnSubFinish4112522")
end

function Quest41125:OnSubFailed4112522(arg1)
    print("OnSubFailed4112522")
end

function Quest41125:OnSubStart4112523(arg1)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112523(arg1)
    print("OnSubFinish4112523")
end

function Quest41125:OnSubFailed4112523(arg1)
    print("OnSubFailed4112523")
end

function Quest41125:OnSubStart4112508(arg1)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:SpawnGadget(arg1, 70710190, 1)
    if self:GetQuestVar(arg1.QuestConfigId, 0) == 2 then
        self:CreateQuestNpc(arg1, npcs.Npc157701Data3.id, 0)
    end
end

function Quest41125:OnSubFinish4112508(arg1)
    print("OnSubFinish4112508")
end

function Quest41125:OnSubFailed4112508(arg1)
    print("OnSubFailed4112508")
end

function Quest41125:OnSubStart4112519(arg1)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 0)
    if questVar == 3 or questVar == 4 then
        self:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTask({{dialogID = 411250401, duration = 2}})
        end)
    elseif questVar == 2 then
        self:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTask({{dialogID = 411250403, duration = 2}, {dialogID = 411250404, duration = 2}})
        end)
    elseif questVar == 1 then
        self:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTask({{dialogID = 411250405, duration = 2}})
        end)
    end

    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q41125palade3").pos, 3, 5, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
end

function Quest41125:OnSubFinish4112519(arg1)
    print("OnSubFinish4112519")
end

function Quest41125:OnSubFailed4112519(arg1)
    print("OnSubFailed4112519")
end

function Quest41125:OnSubStart4112515(arg1)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc157701Data3.id, 0)
end

function Quest41125:OnSubFinish4112515(arg1)
    print("OnSubFinish4112515")
end

function Quest41125:OnSubFailed4112515(arg1)
    print("OnSubFailed4112515")
end

function Quest41125:OnSubStart4112514(arg1)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112514(arg1)
    print("OnSubFinish4112514")
end

function Quest41125:OnSubFailed4112514(arg1)
    print("OnSubFailed4112514")
end

function Quest41125:OnSubStart4112516(arg1)
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112516(arg1)
    print("OnSubFinish4112516")
end

function Quest41125:OnSubFailed4112516(arg1)
    print("OnSubFailed4112516")
end

function Quest41125:OnSubStart4112518(arg1)
    print("OnSubStart4112518")
    self:NotifyTo("Npc1577", 1, true)
    self:NotifyTo("Npc1413", 1, true)
    self:SetQuestVar(4112518, 1, 0)
    self:SetQuestVar(4112518, 2, 0)
    self:SetQuestVar(4112518, 3, 0)
    self:SetQuestVar(4112518, 4, 0)
    self:CreateQuestNpc(arg1, npcs.Npc141301Data.id, 0)
end

function Quest41125:OnSubFinish4112518(arg1)
    print("OnSubFinish4112518")
    self:ShowBlackScreen(0.5, 1, 0.5, self.destory, nil, nil, "")
end

function Quest41125:OnSubFailed4112518(arg1)
    print("OnSubFailed4112518")
end

function Quest41125:OnSubStart4112524(arg1)
    print("OnSubStart4112524")
end

function Quest41125:OnSubFinish4112524(arg1)
    print("OnSubFinish4112524")
end

function Quest41125:OnSubFailed4112524(arg1)
    print("OnSubFailed4112524")
end

return Quest41125
