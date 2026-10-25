require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40061 = class("Quest40061", QuestActorProxy)
Quest40061.defaultAlias = "Quest40061"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40061:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40061:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4006101"] = self.OnSubStart4006101,
        ["4006102"] = self.OnSubStart4006102,
        ["4006103"] = self.OnSubStart4006103,
        ["4006104"] = self.OnSubStart4006104
    }
end

function Quest40061:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4006101"] = self.OnSubFinish4006101,
        ["4006102"] = self.OnSubFinish4006102,
        ["4006103"] = self.OnSubFinish4006103,
        ["4006104"] = self.OnSubFinish4006104
    }
end

function Quest40061:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40061:Start()
    print("Start")
end

function Quest40061:OnDestroy()
    print("OnDestroy")
end

function Quest40061:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40061:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40061:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3193Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40061Trigger", 3, false)
end

function Quest40061:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest40061:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40061:OnSubStart4006101(arg1)
    print("OnSubStart4006101")
    self.CreateQuestNpc(self, arg1, npcs.Npc3193Data.id, 1)
    if self.GetQuestVar(self, 4006101, 4) == 0 then
        self.NarratorOnlyTask(self, datas.NarratorTable, function()
            self:SetQuestVar(4006101, 4, 1)
        end, "")
    end
end

function Quest40061:OnSubFinish4006101(arg1)
    print("OnSubFinish4006101")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc3193Data.alias)
end

function Quest40061:OnSubStart4006102(arg1)
    print("OnSubStart4006102")
    actorMgr:CreateActorWithPos("Q40061Trigger", "Actor/Gadget/Q40061Trigger", 70900002, 0, sceneData:GetDummyPoint(5, "Q7227501_N20341").pos, sceneData:GetDummyPoint(5, "Q7227501_N20341").rot, true, false, 5)
end

function Quest40061:OnSubFinish4006102(arg1)
    print("OnSubFinish4006102")
end

function Quest40061:OnSubStart4006103(arg1)
    print("OnSubStart4006103")
end

function Quest40061:OnSubFinish4006103(arg1)
    print("OnSubFinish4006103")
end

function Quest40061:OnSubStart4006104(arg1)
    print("OnSubStart4006104")
end

function Quest40061:OnSubFinish4006104(arg1)
    print("OnSubFinish4006104")
    self:ActorDestroy("Q40061Trigger")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc3193Data.alias)
end

return Quest40061
