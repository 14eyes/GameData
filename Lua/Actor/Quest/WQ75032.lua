require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75032 = class("Quest75032", QuestActorProxy)
Quest75032.defaultAlias = "Quest75032"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest75032:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest75032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7503201"] = self.OnSubStart7503201,
        ["7503208"] = self.OnSubStart7503208,
        ["7503205"] = self.OnSubStart7503205,
        ["7503207"] = self.OnSubStart7503207,
        ["7503202"] = self.OnSubStart7503202,
        ["7503209"] = self.OnSubStart7503209,
        ["7503203"] = self.OnSubStart7503203,
        ["7503204"] = self.OnSubStart7503204,
        ["7503206"] = self.OnSubStart7503206,
        ["7503210"] = self.OnSubStart7503210
    }
end

function Quest75032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7503201"] = self.OnSubFinish7503201,
        ["7503208"] = self.OnSubFinish7503208,
        ["7503205"] = self.OnSubFinish7503205,
        ["7503207"] = self.OnSubFinish7503207,
        ["7503202"] = self.OnSubFinish7503202,
        ["7503209"] = self.OnSubFinish7503209,
        ["7503203"] = self.OnSubFinish7503203,
        ["7503204"] = self.OnSubFinish7503204,
        ["7503206"] = self.OnSubFinish7503206,
        ["7503210"] = self.OnSubFinish7503210
    }
end

function Quest75032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75032:Start()
    print("Start")
end

function Quest75032:OnDestroy()
    print("OnDestroy")
end

function Quest75032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75032:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75032:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 7503202)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7503209)
    end
end

function Quest75032:OnSubStart7503201(arg1)
    print("OnSubStart7503201")
    this:CreateQuestNpc(arg1, npcs.Npc6138Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7503201Trigger", "Actor/Gadget/Q7503201Trigger", 70900002, 0, {x = -1720.288, y = 223.47, z = 9912.149}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7503201TriggerTalk", "Actor/Gadget/Q7503201TriggerTalk", 70900002, 0, {x = -1708.146, y = 237.571, z = 9910.615}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7503201Trigger02", "Actor/Gadget/Q7503201Trigger02", 70900002, 0, {x = -1713.484, y = 233.469, z = 9914.671}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75032:OnSubFinish7503201(arg1)
    print("OnSubFinish7503201")
end

function Quest75032:OnSubStart7503208(arg1)
    print("OnSubStart7503208")
    actorMgr:CreateActorWithPos("Q7503208Trigger", "Actor/Gadget/Q7503208Trigger", 70900002, 0, {x = -1789.444, y = 207.488, z = 10082.24}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75032:OnSubFinish7503208(arg1)
    print("OnSubFinish7503208")
end

function Quest75032:OnSubStart7503205(arg1)
    print("OnSubStart7503205")
end

function Quest75032:OnSubFinish7503205(arg1)
    print("OnSubFinish7503205")
    this:RequestInteraction(npcs.Npc6138Data.alias, "", true)
end

function Quest75032:OnSubStart7503207(arg1)
    print("OnSubStart7503207")
    this:CreateQuestNpc(arg1, npcs.Npc6138Data.id, 0, false, 0)
end

function Quest75032:OnSubFinish7503207(arg1)
    print("OnSubFinish7503207")
end

function Quest75032:OnSubStart7503202(arg1)
    print("OnSubStart7503202")
    this:CreateQuestNpc(arg1, npcs.Npc6138Data.id, 0, false, 0)
end

function Quest75032:OnSubFinish7503202(arg1)
    print("OnSubFinish7503202")
end

function Quest75032:OnSubStart7503209(arg1)
    print("OnSubStart7503209")
    this:CreateQuestNpc(arg1, npcs.Npc6138Data.id, 0, false, 0)
end

function Quest75032:OnSubFinish7503209(arg1)
    print("OnSubFinish7503209")
end

function Quest75032:OnSubStart7503203(arg1)
    print("OnSubStart7503203")
    this:CreateQuestNpc(arg1, npcs.Npc6138Data.id, 0, false, 0)
end

function Quest75032:OnSubFinish7503203(arg1)
    print("OnSubFinish7503203")
end

function Quest75032:OnSubStart7503204(arg1)
    print("OnSubStart7503204")
    this:CreateQuestNpc(arg1, npcs.Npc6138Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q75032Trigger", "Actor/Gadget/Q75032Trigger", 70900002, 0, {x = -1705.334, y = 235.85, z = 9910.575}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75032:OnSubFinish7503204(arg1)
    print("OnSubFinish7503204")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6138Data.alias)
end

function Quest75032:OnSubStart7503206(arg1)
    print("OnSubStart7503206")
    this:CreateQuestNpc(arg1, npcs.Npc6138Data.id, 0, false, 0)
end

function Quest75032:OnSubFinish7503206(arg1)
    print("OnSubFinish7503206")
    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 0, false, true)
    this:TransmitPlayerById(arg1, 2)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc6138Data.alias)
end

function Quest75032:OnSubStart7503210(arg1)
    print("OnSubStart7503210")
    actorMgr:CreateActorWithPos("Q7503210Trigger", "Actor/Gadget/Q7503210Trigger", 70900002, 0, {x = -1421.385, y = 201.992, z = 9300.345}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest75032:OnSubFinish7503210(arg1)
    print("OnSubFinish7503210")
end

return Quest75032
