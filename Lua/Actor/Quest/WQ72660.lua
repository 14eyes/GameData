require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72660 = class("Quest72660", QuestActorProxy)
Quest72660.defaultAlias = "Quest72660"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72660:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72660:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7266001"] = self.OnSubStart7266001,
        ["7266002"] = self.OnSubStart7266002,
        ["7266003"] = self.OnSubStart7266003
    }
end

function Quest72660:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7266001"] = self.OnSubFinish7266001,
        ["7266002"] = self.OnSubFinish7266002,
        ["7266003"] = self.OnSubFinish7266003
    }
end

function Quest72660:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7266001"] = self.OnSubFailed7266001,
        ["7266002"] = self.OnSubFailed7266002,
        ["7266003"] = self.OnSubFailed7266003
    }
end

function Quest72660:Start()
    print("Start")
end

function Quest72660:OnDestroy()
    print("OnDestroy")
end

function Quest72660:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72660:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72660:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30065Data.alias, 3)
end

function Quest72660:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72660:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72660:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest72660:OnSubStart7266001(arg1)
    print("OnSubStart7266001")
    self:NpcCreate(arg1, npcs.Npc30065Data.id, 1)
end

function Quest72660:OnSubFinish7266001(arg1)
    print("OnSubFinish7266001")
end

function Quest72660:OnSubFailed7266001(arg1)
    print("OnSubFailed7266001")
end

function Quest72660:OnSubStart7266002(arg1)
    print("OnSubStart7266002")
    actorMgr:CreateActorWithPos("Q7266002Trigger", "Actor/Gadget/Q7266002Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7266002PLAYER").pos, sceneData:GetDummyPoint(3, "Q7266002PLAYER").rot, true, false, 3)
    self:ShowBlackScreen(0.4, 2.5, 0.4, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc30065Data.id, 1)
        arg1_2:CallDelay(2.3, function(arg1_2)
            arg1_2:TransmitPlayerById(arg1, 7266002)
        end)
    end, nil, nil, datas.Q72660Textmap.NewString, false, true)
end

function Quest72660:OnSubFinish7266002(arg1)
    print("OnSubFinish7266002")
    self:ShowBlackScreen(0.4, 2, 0.4, function(arg1)
        arg1:NpcDestroy(npcs.Npc30065Data.alias, 3)
        arg1:ActorDestroy("Q7266002Trigger")
    end, function(arg1)
        arg1:ShowTutorialDialog(832)
    end, nil, "", false, true)
end

function Quest72660:OnSubFailed7266002(arg1)
    print("OnSubFailed7266002")
end

function Quest72660:OnSubStart7266003(arg1)
    print("OnSubStart7266003")
end

function Quest72660:OnSubFinish7266003(arg1)
    print("OnSubFinish7266003")
end

function Quest72660:OnSubFailed7266003(arg1)
    print("OnSubFailed7266003")
end

return Quest72660
