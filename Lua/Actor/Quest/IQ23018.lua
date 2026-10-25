require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23018 = class("Quest23018", QuestActorProxy)
Quest23018.defaultAlias = "Quest23018"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23018:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2301801"] = self.OnSubStart2301801,
        ["2301802"] = self.OnSubStart2301802,
        ["2301820"] = self.OnSubStart2301820,
        ["2301803"] = self.OnSubStart2301803,
        ["2301804"] = self.OnSubStart2301804,
        ["2301805"] = self.OnSubStart2301805,
        ["2301806"] = self.OnSubStart2301806,
        ["2301807"] = self.OnSubStart2301807,
        ["2301808"] = self.OnSubStart2301808,
        ["2301821"] = self.OnSubStart2301821,
        ["2301809"] = self.OnSubStart2301809,
        ["2301810"] = self.OnSubStart2301810,
        ["2301811"] = self.OnSubStart2301811,
        ["2301812"] = self.OnSubStart2301812,
        ["2301813"] = self.OnSubStart2301813,
        ["2301814"] = self.OnSubStart2301814,
        ["2301822"] = self.OnSubStart2301822,
        ["2301815"] = self.OnSubStart2301815,
        ["2301816"] = self.OnSubStart2301816,
        ["2301817"] = self.OnSubStart2301817,
        ["2301818"] = self.OnSubStart2301818,
        ["2301819"] = self.OnSubStart2301819
    }
end

function Quest23018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2301801"] = self.OnSubFinish2301801,
        ["2301802"] = self.OnSubFinish2301802,
        ["2301820"] = self.OnSubFinish2301820,
        ["2301803"] = self.OnSubFinish2301803,
        ["2301804"] = self.OnSubFinish2301804,
        ["2301805"] = self.OnSubFinish2301805,
        ["2301806"] = self.OnSubFinish2301806,
        ["2301807"] = self.OnSubFinish2301807,
        ["2301808"] = self.OnSubFinish2301808,
        ["2301821"] = self.OnSubFinish2301821,
        ["2301809"] = self.OnSubFinish2301809,
        ["2301810"] = self.OnSubFinish2301810,
        ["2301811"] = self.OnSubFinish2301811,
        ["2301812"] = self.OnSubFinish2301812,
        ["2301813"] = self.OnSubFinish2301813,
        ["2301814"] = self.OnSubFinish2301814,
        ["2301822"] = self.OnSubFinish2301822,
        ["2301815"] = self.OnSubFinish2301815,
        ["2301816"] = self.OnSubFinish2301816,
        ["2301817"] = self.OnSubFinish2301817,
        ["2301818"] = self.OnSubFinish2301818,
        ["2301819"] = self.OnSubFinish2301819
    }
end

function Quest23018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23018:Start()
    print("Start")
end

function Quest23018:OnDestroy()
    print("OnDestroy")
end

function Quest23018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23018:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4071Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4080Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4064Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4098Data.alias, 3)
end

function Quest23018:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23018:OnSubStart2301801(arg1)
    print("OnSubStart2301801")
    self:CreateQuestNpc(arg1, npcs.Npc4071Data.id, 1)
end

function Quest23018:OnSubFinish2301801(arg1)
    print("OnSubFinish2301801")
end

function Quest23018:OnSubStart2301802(arg1)
    print("OnSubStart2301802")
    self:CreateQuestNpc(arg1, npcs.Npc4080Data.id, 1)
end

function Quest23018:OnSubFinish2301802(arg1)
    print("OnSubFinish2301802")
end

function Quest23018:OnSubStart2301820(arg1)
    print("OnSubStart2301820")
end

function Quest23018:OnSubFinish2301820(arg1)
    print("OnSubFinish2301820")
end

function Quest23018:OnSubStart2301803(arg1)
    print("OnSubStart2301803")
end

function Quest23018:OnSubFinish2301803(arg1)
    print("OnSubFinish2301803")
end

function Quest23018:OnSubStart2301804(arg1)
    print("OnSubStart2301804")
end

function Quest23018:OnSubFinish2301804(arg1)
    print("OnSubFinish2301804")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4071Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc4080Data.alias, 3)
end

function Quest23018:OnSubStart2301805(arg1)
    print("OnSubStart2301805")
end

function Quest23018:OnSubFinish2301805(arg1)
    print("OnSubFinish2301805")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "story")
end

function Quest23018:OnSubStart2301806(arg1)
    print("OnSubStart2301806")
end

function Quest23018:OnSubFinish2301806(arg1)
    print("OnSubFinish2301806")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4080Data.alias)
end

function Quest23018:OnSubStart2301807(arg1)
    print("OnSubStart2301807")
end

function Quest23018:OnSubFinish2301807(arg1)
    print("OnSubFinish2301807")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4071Data.alias)
end

function Quest23018:OnSubStart2301808(arg1)
    print("OnSubStart2301808")
    self:CreateQuestNpc(arg1, npcs.Npc4064Data.id, 1)
end

function Quest23018:OnSubFinish2301808(arg1)
    print("OnSubFinish2301808")
end

function Quest23018:OnSubStart2301821(arg1)
    print("OnSubStart2301821")
end

function Quest23018:OnSubFinish2301821(arg1)
    print("OnSubFinish2301821")
end

function Quest23018:OnSubStart2301809(arg1)
    print("OnSubStart2301809")
end

function Quest23018:OnSubFinish2301809(arg1)
    print("OnSubFinish2301809")
end

function Quest23018:OnSubStart2301810(arg1)
    print("OnSubStart2301810")
end

function Quest23018:OnSubFinish2301810(arg1)
    print("OnSubFinish2301810")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4071Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc4064Data.alias, 3)
end

function Quest23018:OnSubStart2301811(arg1)
    print("OnSubStart2301811")
end

function Quest23018:OnSubFinish2301811(arg1)
    print("OnSubFinish2301811")
end

function Quest23018:OnSubStart2301812(arg1)
    print("OnSubStart2301812")
end

function Quest23018:OnSubFinish2301812(arg1)
    print("OnSubFinish2301812")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4064Data.alias)
end

function Quest23018:OnSubStart2301813(arg1)
    print("OnSubStart2301813")
end

function Quest23018:OnSubFinish2301813(arg1)
    print("OnSubFinish2301813")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4071Data.alias)
end

function Quest23018:OnSubStart2301814(arg1)
    print("OnSubStart2301814")
    self:CreateQuestNpc(arg1, npcs.Npc4098Data.id, 1)
end

function Quest23018:OnSubFinish2301814(arg1)
    print("OnSubFinish2301814")
end

function Quest23018:OnSubStart2301822(arg1)
    print("OnSubStart2301822")
end

function Quest23018:OnSubFinish2301822(arg1)
    print("OnSubFinish2301822")
end

function Quest23018:OnSubStart2301815(arg1)
    print("OnSubStart2301815")
end

function Quest23018:OnSubFinish2301815(arg1)
    print("OnSubFinish2301815")
end

function Quest23018:OnSubStart2301816(arg1)
    print("OnSubStart2301816")
end

function Quest23018:OnSubFinish2301816(arg1)
    print("OnSubFinish2301816")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4071Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc4098Data.alias, 3)
end

function Quest23018:OnSubStart2301817(arg1)
    print("OnSubStart2301817")
end

function Quest23018:OnSubFinish2301817(arg1)
    print("OnSubFinish2301817")
end

function Quest23018:OnSubStart2301818(arg1)
    print("OnSubStart2301818")
end

function Quest23018:OnSubFinish2301818(arg1)
    print("OnSubFinish2301818")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4098Data.alias)
end

function Quest23018:OnSubStart2301819(arg1)
    print("OnSubStart2301819")
end

function Quest23018:OnSubFinish2301819(arg1)
    print("OnSubFinish2301819")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4071Data.alias)
end

return Quest23018
