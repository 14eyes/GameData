require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11015 = class("Quest11015", QuestActorProxy)
Quest11015.defaultAlias = "Quest11015"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest11015:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest11015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1101501"] = self.OnSubStart1101501,
        ["1101506"] = self.OnSubStart1101506,
        ["1101502"] = self.OnSubStart1101502,
        ["1101503"] = self.OnSubStart1101503,
        ["1101504"] = self.OnSubStart1101504,
        ["1101505"] = self.OnSubStart1101505
    }
end

function Quest11015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1101501"] = self.OnSubFinish1101501,
        ["1101506"] = self.OnSubFinish1101506,
        ["1101502"] = self.OnSubFinish1101502,
        ["1101503"] = self.OnSubFinish1101503,
        ["1101504"] = self.OnSubFinish1101504,
        ["1101505"] = self.OnSubFinish1101505
    }
end

function Quest11015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1101501"] = self.OnSubFailed1101501,
        ["1101506"] = self.OnSubFailed1101506,
        ["1101502"] = self.OnSubFailed1101502,
        ["1101503"] = self.OnSubFailed1101503,
        ["1101504"] = self.OnSubFailed1101504,
        ["1101505"] = self.OnSubFailed1101505
    }
end

function Quest11015:Start()
    print("Start")
end

function Quest11015:OnDestroy()
    print("OnDestroy")
end

function Quest11015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11015:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest11015:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest11015:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest11015:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest11015:OnSubStart1101501(arg1)
    print("OnSubStart1101501")
    self:NpcCreate(arg1, npcs.Npc2143Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc12344Data.id, 5)
    self:NpcCreate(arg1, npcs.Npc12345Data.id, 6)
    self:NpcCreate(arg1, npcs.Npc12346Data.id, 7)
    self:NpcCreate(arg1, npcs.Npc12371Data.id, 8)
    self:NpcCreate(arg1, npcs.Npc12348Data.id, 9)
    self:NpcCreate(arg1, npcs.Npc12372Data.id, 10)
    self:NpcCreate(arg1, npcs.Npc12341Data.id, 11)
    self:NpcCreate(arg1, npcs.Npc12342Data.id, 12)
    self:NpcCreate(arg1, npcs.Npc12343Data.id, 13)
end

function Quest11015:OnSubFinish1101501(arg1)
    print("OnSubFinish1101501")
    self:NpcDestroy(npcs.Npc12341Data.alias, 3)
    self:NpcDestroy(npcs.Npc12342Data.alias, 3)
    self:NpcDestroy(npcs.Npc12343Data.alias, 3)
end

function Quest11015:OnSubFailed1101501(arg1)
    print("OnSubFailed1101501")
end

function Quest11015:OnSubStart1101506(arg1)
    print("OnSubStart1101506")
    self:NpcCreate(arg1, npcs.Npc10211Data.id, 1)
end

function Quest11015:OnSubFinish1101506(arg1)
    print("OnSubFinish1101506")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc10211Data.alias)
    self:NpcDestroy(npcs.Npc2143Data.alias, 3)
    self:NpcDestroy(npcs.Npc12344Data.alias, 3)
    self:NpcDestroy(npcs.Npc12345Data.alias, 3)
    self:NpcDestroy(npcs.Npc12346Data.alias, 3)
    self:NpcDestroy(npcs.Npc12371Data.alias, 3)
    self:NpcDestroy(npcs.Npc12348Data.alias, 3)
    self:NpcDestroy(npcs.Npc12372Data.alias, 3)
end

function Quest11015:OnSubFailed1101506(arg1)
    print("OnSubFailed1101506")
end

function Quest11015:OnSubStart1101502(arg1)
    print("OnSubStart1101502")
end

function Quest11015:OnSubFinish1101502(arg1)
    print("OnSubFinish1101502")
end

function Quest11015:OnSubFailed1101502(arg1)
    print("OnSubFailed1101502")
end

function Quest11015:OnSubStart1101503(arg1)
    print("OnSubStart1101503")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc10211Data.id, 1, npcs.Npc10211Data.alias)
    self:NpcCreate(arg1, npcs.Npc1016Data.id, 5)
end

function Quest11015:OnSubFinish1101503(arg1)
    print("OnSubFinish1101503")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc10211Data.alias)
    self:NpcDestroy(npcs.Npc1045Data.alias, 3)
    self:NpcDestroy(npcs.PaimonData.alias, 3)
    self:NpcDestroy(npcs.Npc10258Data.alias, 3)
end

function Quest11015:OnSubFailed1101503(arg1)
    print("OnSubFailed1101503")
end

function Quest11015:OnSubStart1101504(arg1)
    print("OnSubStart1101504")
    self:NpcCreate(arg1, npcs.Npc10211Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc1045Data.id, 2)
    self:NpcCreate(arg1, npcs.Npc1046Data.id, 3)
    self:NpcCreate(arg1, npcs.Npc12355Data.id, 4)
    self:NpcCreate(arg1, npcs.Npc12356Data.id, 5)
    self:NpcCreate(arg1, npcs.Npc12357Data.id, 6)
end

function Quest11015:OnSubFinish1101504(arg1)
    print("OnSubFinish1101504")
end

function Quest11015:OnSubFailed1101504(arg1)
    print("OnSubFailed1101504")
end

function Quest11015:OnSubStart1101505(arg1)
    print("OnSubStart1101505")
    self:NpcCreate(arg1, npcs.Npc1016Data.id, 1)
end

function Quest11015:OnSubFinish1101505(arg1)
    print("OnSubFinish1101505")
end

function Quest11015:OnSubFailed1101505(arg1)
    print("OnSubFailed1101505")
end

return Quest11015
