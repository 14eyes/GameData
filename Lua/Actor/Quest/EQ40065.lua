require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40065 = class("Quest40065", QuestActorProxy)
Quest40065.defaultAlias = "Quest40065"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40065:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40065:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4006502"] = self.OnSubStart4006502,
        ["4006503"] = self.OnSubStart4006503,
        ["4006504"] = self.OnSubStart4006504,
        ["4006505"] = self.OnSubStart4006505,
        ["4006517"] = self.OnSubStart4006517,
        ["4006506"] = self.OnSubStart4006506,
        ["4006507"] = self.OnSubStart4006507,
        ["4006524"] = self.OnSubStart4006524,
        ["4006509"] = self.OnSubStart4006509,
        ["4006510"] = self.OnSubStart4006510,
        ["4006516"] = self.OnSubStart4006516,
        ["4006511"] = self.OnSubStart4006511,
        ["4006512"] = self.OnSubStart4006512,
        ["4006513"] = self.OnSubStart4006513,
        ["4006501"] = self.OnSubStart4006501,
        ["4006508"] = self.OnSubStart4006508,
        ["4006518"] = self.OnSubStart4006518,
        ["4006520"] = self.OnSubStart4006520,
        ["4006519"] = self.OnSubStart4006519,
        ["4006521"] = self.OnSubStart4006521,
        ["4006522"] = self.OnSubStart4006522,
        ["4006514"] = self.OnSubStart4006514,
        ["4006523"] = self.OnSubStart4006523,
        ["4006515"] = self.OnSubStart4006515
    }
end

function Quest40065:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4006502"] = self.OnSubFinish4006502,
        ["4006503"] = self.OnSubFinish4006503,
        ["4006504"] = self.OnSubFinish4006504,
        ["4006505"] = self.OnSubFinish4006505,
        ["4006517"] = self.OnSubFinish4006517,
        ["4006506"] = self.OnSubFinish4006506,
        ["4006507"] = self.OnSubFinish4006507,
        ["4006524"] = self.OnSubFinish4006524,
        ["4006509"] = self.OnSubFinish4006509,
        ["4006510"] = self.OnSubFinish4006510,
        ["4006516"] = self.OnSubFinish4006516,
        ["4006511"] = self.OnSubFinish4006511,
        ["4006512"] = self.OnSubFinish4006512,
        ["4006513"] = self.OnSubFinish4006513,
        ["4006501"] = self.OnSubFinish4006501,
        ["4006508"] = self.OnSubFinish4006508,
        ["4006518"] = self.OnSubFinish4006518,
        ["4006520"] = self.OnSubFinish4006520,
        ["4006519"] = self.OnSubFinish4006519,
        ["4006521"] = self.OnSubFinish4006521,
        ["4006522"] = self.OnSubFinish4006522,
        ["4006514"] = self.OnSubFinish4006514,
        ["4006523"] = self.OnSubFinish4006523,
        ["4006515"] = self.OnSubFinish4006515
    }
end

function Quest40065:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40065:Start()
    print("Start")
end

function Quest40065:OnDestroy()
    print("OnDestroy")
end

function Quest40065:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40065:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40065:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20142)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20142)
    self:SafeDestroyQuestNpc(npcs.Npc10012Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20142)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20142)
    self:SafeDestroyQuestNpc(npcs.Npc12608Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12609Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12646Data.alias, 20142)
    self:SafeDestroyQuestNpc(npcs.Npc12647Data.alias, 20142)
    self:SafeDestroyQuestNpc(npcs.Npc12648Data.alias, 20142)
    self:SafeDestroyQuestNpc(npcs.Npc12624Data.alias, 20142)
    actorMgr:GetActor("40065"):UnSpawn(gadgets.Gadget45001001Data.alias)
    actorMgr:DestroyEntityActor("Q4006503_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4006505_NarratorTrigger", 9, false)
    actorMgr:DestroyEntityActor("Q4006505_Trigger", 9, false)
    actorMgr:DestroyEntityActor("Q4006510_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006514_Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4006515_Trigger", 9, false)
end

function Quest40065:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40065:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40065:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        self:UnSpawn(gadgets.Gadget45001001Data.alias)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 4006524)
    elseif arg1 == 2 then
        self:ActionSafeCall(function(arg1)
            arg1:CallDelay(1, function(arg1)
                arg1:NarratorOnlyTaskByData(datas.Narrator_4006504, nil, 40065)
            end)
        end)
    elseif arg1 == 3 then
        self:ActionSafeCall(function(arg1)
            arg1:NarratorOnlyTaskByData(datas.Narrator_4006505, nil, 40065)
        end)
    end
end

function Quest40065:OnSubStart4006502(arg1)
    print("OnSubStart4006502")
end

function Quest40065:OnSubFinish4006502(arg1)
    print("OnSubFinish4006502")
end

function Quest40065:OnSubStart4006503(arg1)
    print("OnSubStart4006503")
    self:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10012Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10011Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc10095Data.id, 5)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12608Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12609Data.id, 7)
    actorMgr:CreateActorWithPos("Q4006503_Trigger", "Actor/Gadget/Q4006503_Trigger", 70900002, 0, {x = -250.232, y = 120.187, z = 428.378}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest40065:OnSubFinish4006503(arg1)
    print("OnSubFinish4006503")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10012Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc12609Data.alias, 9)
end

function Quest40065:OnSubStart4006504(arg1)
    print("OnSubStart4006504")
    self:UnSpawn(gadgets.Gadget45001001Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget45001001Data.id, 1, 0)
end

function Quest40065:OnSubFinish4006504(arg1)
    print("OnSubFinish4006504")
    self:NarratorOnlyTaskByData(datas.Narrator_4006501, nil, 40065)
end

function Quest40065:OnSubStart4006505(arg1)
    print("OnSubStart4006505")
    actorMgr:CreateActorWithPos("Q4006505_Trigger", "Actor/Gadget/Q4006505_Trigger", 70900002, 0, {x = -225.193, y = 122.881, z = -509.185}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
    actorMgr:CreateActorWithPos("Q4006505_NarratorTrigger", "Actor/Gadget/Q4006505_NarratorTrigger", 70900002, 0, {x = -218.684, y = 121.122, z = -505.483}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
    actorMgr:CreateActorWithPos("Q4006505_NarratorTrigger2", "Actor/Gadget/Q4006505_NarratorTrigger2", 70900002, 0, {x = -218.684, y = 121.122, z = -505.483}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest40065:OnSubFinish4006505(arg1)
    print("OnSubFinish4006505")
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:UnSpawn(gadgets.Gadget45001001Data.alias)
    if actorMgr:GetActor("Q4006505_NarratorTrigger") ~= nil then
        self:ActorDestroy("Q4006505_NarratorTrigger")
        if actorMgr:GetActor("Q4006505_NarratorTrigger2") ~= nil then
            self:ActorDestroy("Q4006505_NarratorTrigger2")
        end
    end
end

function Quest40065:OnSubStart4006517(arg1)
    print("OnSubStart4006517")
    self:ActionSafeCall(function(arg1)
        globalActor:PlayerEnterDungeonPoint(9, 1146, 4006517, 1)
    end)
end

function Quest40065:OnSubFinish4006517(arg1)
    print("OnSubFinish4006517")
    self:SafeDestroyQuestNpc(npcs.Npc12608Data.alias, 9)
end

function Quest40065:OnSubStart4006506(arg1)
    print("OnSubStart4006506")
    self:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 1)
    self:RequestInteraction(npcs.Npc1042Data.alias)
end

function Quest40065:OnSubFinish4006506(arg1)
    print("OnSubFinish4006506")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20142)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20142)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20142)
end

function Quest40065:OnSubStart4006507(arg1)
    print("OnSubStart4006507")
    self:CreateQuestNpc(arg1, npcs.Npc12624Data.id, 1)
end

function Quest40065:OnSubFinish4006507(arg1)
    print("OnSubFinish4006507")
    self:SafeDestroyQuestNpc(npcs.Npc12624Data.alias, 20142)
end

function Quest40065:OnSubStart4006524(arg1)
    print("OnSubStart4006524")
end

function Quest40065:OnSubFinish4006524(arg1)
    print("OnSubFinish4006524")
end

function Quest40065:OnSubStart4006509(arg1)
    print("OnSubStart4006509")
end

function Quest40065:OnSubFinish4006509(arg1)
    print("OnSubFinish4006509")
end

function Quest40065:OnSubStart4006510(arg1)
    print("OnSubStart4006510")
    actorMgr:CreateActorWithPos("Q4006510_Trigger", "Actor/Gadget/Q4006510_Trigger", 70900002, 0, {x = 83.376, y = 6.739, z = 58.873}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20142)
end

function Quest40065:OnSubFinish4006510(arg1)
    print("OnSubFinish4006510")
end

function Quest40065:OnSubStart4006516(arg1)
    print("OnSubStart4006516")
    self:CreateQuestNpc(arg1, npcs.Npc12624Data.id, 1)
end

function Quest40065:OnSubFinish4006516(arg1)
    print("OnSubFinish4006516")
    self:SafeDestroyQuestNpc(npcs.Npc12624Data.alias, 20142)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator_4006506, nil, 40065)
    end)
end

function Quest40065:OnSubStart4006511(arg1)
    print("OnSubStart4006511")
end

function Quest40065:OnSubFinish4006511(arg1)
    print("OnSubFinish4006511")
end

function Quest40065:OnSubStart4006512(arg1)
    print("OnSubStart4006512")
end

function Quest40065:OnSubFinish4006512(arg1)
    print("OnSubFinish4006512")
end

function Quest40065:OnSubStart4006513(arg1)
    print("OnSubStart4006513")
end

function Quest40065:OnSubFinish4006513(arg1)
    print("OnSubFinish4006513")
end

function Quest40065:OnSubStart4006501(arg1)
    print("OnSubStart4006501")
    self:CreateQuestNpc(arg1, npcs.Npc12646Data.id, 1)
end

function Quest40065:OnSubFinish4006501(arg1)
    print("OnSubFinish4006501")
    self:SafeDestroyQuestNpc(npcs.Npc12646Data.alias, 20142)
end

function Quest40065:OnSubStart4006508(arg1)
    print("OnSubStart4006508")
end

function Quest40065:OnSubFinish4006508(arg1)
    print("OnSubFinish4006508")
end

function Quest40065:OnSubStart4006518(arg1)
    print("OnSubStart4006518")
    self:CreateQuestNpc(arg1, npcs.Npc12647Data.id, 1)
end

function Quest40065:OnSubFinish4006518(arg1)
    print("OnSubFinish4006518")
    self:SafeDestroyQuestNpc(npcs.Npc12647Data.alias, 20142)
end

function Quest40065:OnSubStart4006520(arg1)
    print("OnSubStart4006520")
end

function Quest40065:OnSubFinish4006520(arg1)
    print("OnSubFinish4006520")
end

function Quest40065:OnSubStart4006519(arg1)
    print("OnSubStart4006519")
    self:CreateQuestNpc(arg1, npcs.Npc12648Data.id, 1)
end

function Quest40065:OnSubFinish4006519(arg1)
    print("OnSubFinish4006519")
    self:SafeDestroyQuestNpc(npcs.Npc12648Data.alias, 20142)
end

function Quest40065:OnSubStart4006521(arg1)
    print("OnSubStart4006521")
end

function Quest40065:OnSubFinish4006521(arg1)
    print("OnSubFinish4006521")
end

function Quest40065:OnSubStart4006522(arg1)
    print("OnSubStart4006522")
end

function Quest40065:OnSubFinish4006522(arg1)
    print("OnSubFinish4006522")
end

function Quest40065:OnSubStart4006514(arg1)
    print("OnSubStart4006514")
    self:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 2)
    actorMgr:CreateActorWithPos("Q4006514_Trigger", "Actor/Gadget/Q4006514_Trigger", 70900002, 0, {x = 168.491, y = 35.489, z = 29.983}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20142)
end

function Quest40065:OnSubFinish4006514(arg1)
    print("OnSubFinish4006514")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 20142)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 20142)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 20142)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 20142)
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 1)
end

function Quest40065:OnSubStart4006523(arg1)
    print("OnSubStart4006523")
end

function Quest40065:OnSubFinish4006523(arg1)
    print("OnSubFinish4006523")
end

function Quest40065:OnSubStart4006515(arg1)
    print("OnSubStart4006515")
    actorMgr:CreateActorWithPos("Q4006515_Trigger", "Actor/Gadget/Q4006515_Trigger", 70900002, 0, {x = -220.997, y = 120.961, z = -507.342}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest40065:OnSubFinish4006515(arg1)
    print("OnSubFinish4006515")
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10011Data.alias, 9)
    self:SafeDestroyQuestNpc(npcs.Npc10095Data.alias, 9)
end

return Quest40065
