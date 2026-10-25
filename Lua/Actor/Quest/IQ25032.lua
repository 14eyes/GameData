require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25032 = class("Quest25032", QuestActorProxy)
Quest25032.defaultAlias = "Quest25032"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest25032:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest25032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2503201"] = self.OnSubStart2503201,
        ["2503202"] = self.OnSubStart2503202,
        ["2503205"] = self.OnSubStart2503205,
        ["2503207"] = self.OnSubStart2503207,
        ["2503214"] = self.OnSubStart2503214,
        ["2503203"] = self.OnSubStart2503203,
        ["2503209"] = self.OnSubStart2503209,
        ["2503215"] = self.OnSubStart2503215,
        ["2503204"] = self.OnSubStart2503204,
        ["2503208"] = self.OnSubStart2503208,
        ["2503216"] = self.OnSubStart2503216,
        ["2503206"] = self.OnSubStart2503206,
        ["2503211"] = self.OnSubStart2503211,
        ["2503210"] = self.OnSubStart2503210,
        ["2503212"] = self.OnSubStart2503212,
        ["2503217"] = self.OnSubStart2503217,
        ["2503213"] = self.OnSubStart2503213
    }
end

function Quest25032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2503201"] = self.OnSubFinish2503201,
        ["2503202"] = self.OnSubFinish2503202,
        ["2503205"] = self.OnSubFinish2503205,
        ["2503207"] = self.OnSubFinish2503207,
        ["2503214"] = self.OnSubFinish2503214,
        ["2503203"] = self.OnSubFinish2503203,
        ["2503209"] = self.OnSubFinish2503209,
        ["2503215"] = self.OnSubFinish2503215,
        ["2503204"] = self.OnSubFinish2503204,
        ["2503208"] = self.OnSubFinish2503208,
        ["2503216"] = self.OnSubFinish2503216,
        ["2503206"] = self.OnSubFinish2503206,
        ["2503211"] = self.OnSubFinish2503211,
        ["2503210"] = self.OnSubFinish2503210,
        ["2503212"] = self.OnSubFinish2503212,
        ["2503217"] = self.OnSubFinish2503217,
        ["2503213"] = self.OnSubFinish2503213
    }
end

function Quest25032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25032:Start()
    print("Start")
end

function Quest25032:OnDestroy()
    print("OnDestroy")
end

function Quest25032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25032:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc14443.alias, 3)
    this:LightNotifyTo(npcs.Npc6045.alias, 0, true)
    this:RemoveLocalGadget(70710787, "2503201")
end

function Quest25032:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest25032:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest25032:OnSubStart2503201(arg1)
    print("OnSubStart2503201")
    this:CreateQuestNpc(arg1, npcs.Npc14443.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14443.alias, 25032):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6045.alias, true, 1)
    this:CreateLocalGadget(70710787, "2503201", {x = -1866.918, y = 66.98, z = 9106.871}, {x = 0, y = 82.041, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest25032:OnSubFinish2503201(arg1)
    print("OnSubFinish2503201")
end

function Quest25032:OnSubStart2503202(arg1)
    print("OnSubStart2503202")
end

function Quest25032:OnSubFinish2503202(arg1)
    print("OnSubFinish2503202")
end

function Quest25032:OnSubStart2503205(arg1)
    print("OnSubStart2503205")
end

function Quest25032:OnSubFinish2503205(arg1)
    print("OnSubFinish2503205")
end

function Quest25032:OnSubStart2503207(arg1)
    print("OnSubStart2503207")
end

function Quest25032:OnSubFinish2503207(arg1)
    print("OnSubFinish2503207")
end

function Quest25032:OnSubStart2503214(arg1)
    print("OnSubStart2503214")
    this:GetQuestNpcActor(npcs.Npc14443.alias, 25032):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6045.alias, true, 1)
    this:CreateLocalGadget(70710787, "2503201", {x = -1866.918, y = 66.98, z = 9106.871}, {x = 0, y = 82.041, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest25032:OnSubFinish2503214(arg1)
    print("OnSubFinish2503214")
end

function Quest25032:OnSubStart2503203(arg1)
    print("OnSubStart2503203")
end

function Quest25032:OnSubFinish2503203(arg1)
    print("OnSubFinish2503203")
end

function Quest25032:OnSubStart2503209(arg1)
    print("OnSubStart2503209")
end

function Quest25032:OnSubFinish2503209(arg1)
    print("OnSubFinish2503209")
end

function Quest25032:OnSubStart2503215(arg1)
    print("OnSubStart2503215")
    this:GetQuestNpcActor(npcs.Npc14443.alias, 25032):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6045.alias, true, 1)
    this:CreateLocalGadget(70710787, "2503201", {x = -1866.918, y = 66.98, z = 9106.871}, {x = 0, y = 82.041, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest25032:OnSubFinish2503215(arg1)
    print("OnSubFinish2503215")
end

function Quest25032:OnSubStart2503204(arg1)
    print("OnSubStart2503204")
end

function Quest25032:OnSubFinish2503204(arg1)
    print("OnSubFinish2503204")
end

function Quest25032:OnSubStart2503208(arg1)
    print("OnSubStart2503208")
end

function Quest25032:OnSubFinish2503208(arg1)
    print("OnSubFinish2503208")
end

function Quest25032:OnSubStart2503216(arg1)
    print("OnSubStart2503216")
    this:GetQuestNpcActor(npcs.Npc14443.alias, 25032):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6045.alias, true, 1)
    this:CreateLocalGadget(70710787, "2503201", {x = -1866.918, y = 66.98, z = 9106.871}, {x = 0, y = 82.041, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest25032:OnSubFinish2503216(arg1)
    print("OnSubFinish2503216")
end

function Quest25032:OnSubStart2503206(arg1)
    print("OnSubStart2503206")
    this:GetQuestNpcActor(npcs.Npc14443.alias, 25032):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6045.alias, true, 1)
    this:CreateLocalGadget(70710787, "2503201", {x = -1866.918, y = 66.98, z = 9106.871}, {x = 0, y = 82.041, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest25032:OnSubFinish2503206(arg1)
    print("OnSubFinish2503206")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14443.alias)
    this:RemoveLocalGadget(70710787, "2503201")
    this:LightNotifyTo(npcs.Npc6045.alias, 0, true)
end

function Quest25032:OnSubStart2503211(arg1)
    print("OnSubStart2503211")
    this:GetQuestNpcActor(npcs.Npc14443.alias, 25032):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6045.alias, true, 1)
    this:CreateLocalGadget(70710787, "2503201", {x = -1866.918, y = 66.98, z = 9106.871}, {x = 0, y = 82.041, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest25032:OnSubFinish2503211(arg1)
    print("OnSubFinish2503211")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14443.alias)
    this:RemoveLocalGadget(70710787, "2503201")
    this:LightNotifyTo(npcs.Npc6045.alias, 0, true)
end

function Quest25032:OnSubStart2503210(arg1)
    print("OnSubStart2503210")
    this:GetQuestNpcActor(npcs.Npc14443.alias, 25032):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6045.alias, true, 1)
    this:CreateLocalGadget(70710787, "2503201", {x = -1866.918, y = 66.98, z = 9106.871}, {x = 0, y = 82.041, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest25032:OnSubFinish2503210(arg1)
    print("OnSubFinish2503210")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14443.alias)
    this:RemoveLocalGadget(70710787, "2503201")
    this:LightNotifyTo(npcs.Npc6045.alias, 0, true)
end

function Quest25032:OnSubStart2503212(arg1)
    print("OnSubStart2503212")
    this:GetQuestNpcActor(npcs.Npc14443.alias, 25032):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6045.alias, true, 1)
    this:CreateLocalGadget(70710787, "2503201", {x = -1866.918, y = 66.98, z = 9106.871}, {x = 0, y = 82.041, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest25032:OnSubFinish2503212(arg1)
    print("OnSubFinish2503212")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14443.alias)
    this:RemoveLocalGadget(70710787, "2503201")
    this:LightNotifyTo(npcs.Npc6045.alias, 0, true)
end

function Quest25032:OnSubStart2503217(arg1)
    print("OnSubStart2503217")
    this:GetQuestNpcActor(npcs.Npc14443.alias, 25032):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6045.alias, true, 1)
    this:CreateLocalGadget(70710787, "2503201", {x = -1866.918, y = 66.98, z = 9106.871}, {x = 0, y = 82.041, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest25032:OnSubFinish2503217(arg1)
    print("OnSubFinish2503217")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14443.alias)
    this:RemoveLocalGadget(70710787, "2503201")
    this:LightNotifyTo(npcs.Npc6045.alias, 0, true)
end

function Quest25032:OnSubStart2503213(arg1)
    print("OnSubStart2503213")
    this:GetQuestNpcActor(npcs.Npc14443.alias, 25032):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6045.alias, true, 1)
    this:CreateLocalGadget(70710787, "2503201", {x = -1866.918, y = 66.98, z = 9106.871}, {x = 0, y = 82.041, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest25032:OnSubFinish2503213(arg1)
    print("OnSubFinish2503213")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14443.alias)
    this:RemoveLocalGadget(70710787, "2503201")
    this:LightNotifyTo(npcs.Npc6045.alias, 0, true)
end

return Quest25032
