require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73098 = class("Quest73098", QuestActorProxy)
Quest73098.defaultAlias = "Quest73098"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73098:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73098:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7309804"] = self.OnSubStart7309804,
        ["7309801"] = self.OnSubStart7309801,
        ["7309802"] = self.OnSubStart7309802,
        ["7309805"] = self.OnSubStart7309805,
        ["7309803"] = self.OnSubStart7309803
    }
end

function Quest73098:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7309804"] = self.OnSubFinish7309804,
        ["7309801"] = self.OnSubFinish7309801,
        ["7309802"] = self.OnSubFinish7309802,
        ["7309805"] = self.OnSubFinish7309805,
        ["7309803"] = self.OnSubFinish7309803
    }
end

function Quest73098:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73098:Start()
    print("Start")
end

function Quest73098:OnDestroy()
    print("OnDestroy")
end

function Quest73098:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73098:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73098:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73098:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73098:OnSubStart7309804(arg1)
    print("OnSubStart7309804")
    self:CreateQuestNpc(arg1, npcs.Npc20762Data.id, 1)
end

function Quest73098:OnSubFinish7309804(arg1)
    print("OnSubFinish7309804")
    self:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest73098:OnSubStart7309801(arg1)
    print("OnSubStart7309801")
end

function Quest73098:OnSubFinish7309801(arg1)
    print("OnSubFinish7309801")
end

function Quest73098:OnSubStart7309802(arg1)
    print("OnSubStart7309802")
end

function Quest73098:OnSubFinish7309802(arg1)
    print("OnSubFinish7309802")
end

function Quest73098:OnSubStart7309805(arg1)
    print("OnSubStart7309805")
    actorMgr:CreateActorWithPos("Q73098Trigger03", "Actor/Gadget/Q73098Trigger03", 70900002, 0, {x = -238.093, y = 238.342, z = 3469.411}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73098:OnSubFinish7309805(arg1)
    print("OnSubFinish7309805")
end

function Quest73098:OnSubStart7309803(arg1)
    print("OnSubStart7309803")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.PaimonData.id, 2, npcs.PaimonData.alias)
end

function Quest73098:OnSubFinish7309803(arg1)
    print("OnSubFinish7309803")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    self:SafeDestroyQuestNpc(npcs.Npc20762Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

return Quest73098
