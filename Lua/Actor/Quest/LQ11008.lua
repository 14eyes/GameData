require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11008 = class("Quest11008", QuestActorProxy)
Quest11008.defaultAlias = "Quest11008"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest11008:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest11008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1100801"] = self.OnSubStart1100801,
        ["1100802"] = self.OnSubStart1100802,
        ["1100803"] = self.OnSubStart1100803,
        ["1100804"] = self.OnSubStart1100804,
        ["1100805"] = self.OnSubStart1100805,
        ["1100812"] = self.OnSubStart1100812,
        ["1100806"] = self.OnSubStart1100806,
        ["1100813"] = self.OnSubStart1100813,
        ["1100815"] = self.OnSubStart1100815,
        ["1100814"] = self.OnSubStart1100814,
        ["1100807"] = self.OnSubStart1100807,
        ["1100808"] = self.OnSubStart1100808,
        ["1100809"] = self.OnSubStart1100809,
        ["1100810"] = self.OnSubStart1100810,
        ["1100811"] = self.OnSubStart1100811
    }
end

function Quest11008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1100801"] = self.OnSubFinish1100801,
        ["1100802"] = self.OnSubFinish1100802,
        ["1100803"] = self.OnSubFinish1100803,
        ["1100804"] = self.OnSubFinish1100804,
        ["1100805"] = self.OnSubFinish1100805,
        ["1100812"] = self.OnSubFinish1100812,
        ["1100806"] = self.OnSubFinish1100806,
        ["1100813"] = self.OnSubFinish1100813,
        ["1100815"] = self.OnSubFinish1100815,
        ["1100814"] = self.OnSubFinish1100814,
        ["1100807"] = self.OnSubFinish1100807,
        ["1100808"] = self.OnSubFinish1100808,
        ["1100809"] = self.OnSubFinish1100809,
        ["1100810"] = self.OnSubFinish1100810,
        ["1100811"] = self.OnSubFinish1100811
    }
end

function Quest11008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1100801"] = self.OnSubFailed1100801,
        ["1100802"] = self.OnSubFailed1100802,
        ["1100803"] = self.OnSubFailed1100803,
        ["1100804"] = self.OnSubFailed1100804,
        ["1100805"] = self.OnSubFailed1100805,
        ["1100812"] = self.OnSubFailed1100812,
        ["1100806"] = self.OnSubFailed1100806,
        ["1100813"] = self.OnSubFailed1100813,
        ["1100815"] = self.OnSubFailed1100815,
        ["1100814"] = self.OnSubFailed1100814,
        ["1100807"] = self.OnSubFailed1100807,
        ["1100808"] = self.OnSubFailed1100808,
        ["1100809"] = self.OnSubFailed1100809,
        ["1100810"] = self.OnSubFailed1100810,
        ["1100811"] = self.OnSubFailed1100811
    }
end

function Quest11008:Start()
    print("Start")
end

function Quest11008:OnDestroy()
    print("OnDestroy")
end

function Quest11008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11008:OnSubStart1100801(arg1)
    print("OnSubStart1100801")
    self:NotifyTo(npcs.Npc2093Data.alias, 2, true)
end

function Quest11008:OnSubFinish1100801(arg1)
    print("OnSubFinish1100801")
end

function Quest11008:OnSubFailed1100801(arg1)
    print("OnSubFailed1100801")
end

function Quest11008:OnSubStart1100802(arg1)
    print("OnSubStart1100802")
    self:CreateQuestNpc(arg1, npcs.Npc10014Data.id, 1)
end

function Quest11008:OnSubFinish1100802(arg1)
    print("OnSubFinish1100802")
end

function Quest11008:OnSubFailed1100802(arg1)
    print("OnSubFailed1100802")
end

function Quest11008:OnSubStart1100803(arg1)
    print("OnSubStart1100803")
end

function Quest11008:OnSubFinish1100803(arg1)
    print("OnSubFinish1100803")
end

function Quest11008:OnSubFailed1100803(arg1)
    print("OnSubFailed1100803")
end

function Quest11008:OnSubStart1100804(arg1)
    print("OnSubStart1100804")
    self:CreateQuestNpc(arg1, npcs.Npc10015Data.id, 1)
end

function Quest11008:OnSubFinish1100804(arg1)
    print("OnSubFinish1100804")
end

function Quest11008:OnSubFailed1100804(arg1)
    print("OnSubFailed1100804")
end

function Quest11008:OnSubStart1100805(arg1)
    print("OnSubStart1100805")
end

function Quest11008:OnSubFinish1100805(arg1)
    print("OnSubFinish1100805")
end

function Quest11008:OnSubFailed1100805(arg1)
    print("OnSubFailed1100805")
end

function Quest11008:OnSubStart1100806(arg1)
    print("OnSubStart1100806")
end

function Quest11008:OnSubFinish1100806(arg1)
    print("OnSubFinish1100806")
end

function Quest11008:OnSubFailed1100806(arg1)
    print("OnSubFailed1100806")
end

function Quest11008:OnSubStart1100807(arg1)
    print("OnSubStart1100807")
end

function Quest11008:OnSubFinish1100807(arg1)
    print("OnSubFinish1100807")
end

function Quest11008:OnSubFailed1100807(arg1)
    print("OnSubFailed1100807")
end

function Quest11008:OnSubStart1100808(arg1)
    print("OnSubStart1100808")
end

function Quest11008:OnSubFinish1100808(arg1)
    print("OnSubFinish1100808")
end

function Quest11008:OnSubFailed1100808(arg1)
    print("OnSubFailed1100808")
end

function Quest11008:OnSubStart1100809(arg1)
    print("OnSubStart1100809")
    self:CreateQuestNpc(arg1, npcs.Npc10234Data.id, 1)
end

function Quest11008:OnSubFinish1100809(arg1)
    print("OnSubFinish1100809")
end

function Quest11008:OnSubFailed1100809(arg1)
    print("OnSubFailed1100809")
end

function Quest11008:OnSubStart1100810(arg1)
    print("OnSubStart1100810")
end

function Quest11008:OnSubFinish1100810(arg1)
    print("OnSubFinish1100810")
end

function Quest11008:OnSubFailed1100810(arg1)
    print("OnSubFailed1100810")
end

function Quest11008:OnSubStart1100811(arg1)
    print("OnSubStart1100811")
end

function Quest11008:OnSubFinish1100811(arg1)
    print("OnSubFinish1100811")
    self:SafeDestroyQuestNpc(npcs.Npc10014Data.alias, 3)
end

function Quest11008:OnSubFailed1100811(arg1)
    print("OnSubFailed1100811")
end

function Quest11008:OnSubStart1100812(arg1)
    print("OnSubStart1100812")
    self:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 1)
end

function Quest11008:OnSubFinish1100812(arg1)
    print("OnSubFinish1100812")
end

function Quest11008:OnSubFailed1100812(arg1)
    print("OnSubFailed1100812")
end

function Quest11008:OnSubStart1100813(arg1)
    print("OnSubStart1100813")
end

function Quest11008:OnSubFinish1100813(arg1)
    print("OnSubFinish1100813")
end

function Quest11008:OnSubFailed1100813(arg1)
    print("OnSubFailed1100813")
end

function Quest11008:OnSubStart1100815(arg1)
    print("OnSubStart1100815")
    self:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 1)
end

function Quest11008:OnSubFinish1100815(arg1)
    print("OnSubFinish1100815")
end

function Quest11008:OnSubFailed1100815(arg1)
    print("OnSubFailed1100815")
end

function Quest11008:OnSubStart1100814(arg1)
    print("OnSubStart1100814")
end

function Quest11008:OnSubFinish1100814(arg1)
    print("OnSubFinish1100814")
end

function Quest11008:OnSubFailed1100814(arg1)
    print("OnSubFailed1100814")
end

return Quest11008
