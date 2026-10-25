require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74082 = class("Quest74082", QuestActorProxy)
Quest74082.defaultAlias = "Quest74082"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74082:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74082:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7408201"] = self.OnSubStart7408201,
        ["7408214"] = self.OnSubStart7408214,
        ["7408209"] = self.OnSubStart7408209,
        ["7408202"] = self.OnSubStart7408202,
        ["7408208"] = self.OnSubStart7408208,
        ["7408215"] = self.OnSubStart7408215,
        ["7408205"] = self.OnSubStart7408205,
        ["7408213"] = self.OnSubStart7408213,
        ["7408206"] = self.OnSubStart7408206,
        ["7408207"] = self.OnSubStart7408207,
        ["7408204"] = self.OnSubStart7408204,
        ["7408210"] = self.OnSubStart7408210,
        ["7408211"] = self.OnSubStart7408211,
        ["7408212"] = self.OnSubStart7408212
    }
end

function Quest74082:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7408201"] = self.OnSubFinish7408201,
        ["7408214"] = self.OnSubFinish7408214,
        ["7408209"] = self.OnSubFinish7408209,
        ["7408202"] = self.OnSubFinish7408202,
        ["7408208"] = self.OnSubFinish7408208,
        ["7408215"] = self.OnSubFinish7408215,
        ["7408205"] = self.OnSubFinish7408205,
        ["7408213"] = self.OnSubFinish7408213,
        ["7408206"] = self.OnSubFinish7408206,
        ["7408207"] = self.OnSubFinish7408207,
        ["7408204"] = self.OnSubFinish7408204,
        ["7408210"] = self.OnSubFinish7408210,
        ["7408211"] = self.OnSubFinish7408211,
        ["7408212"] = self.OnSubFinish7408212
    }
end

function Quest74082:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74082:Start()
    print("Start")
end

function Quest74082:OnDestroy()
    print("OnDestroy")
end

function Quest74082:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74082:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74082:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74082:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74082:OnSubStart7408201(arg1)
    print("OnSubStart7408201")
    this:CreateQuestNpc(arg1, npcs.Npc5263Data.id, 0)
end

function Quest74082:OnSubFinish7408201(arg1)
    print("OnSubFinish7408201")
    this:SafeDestroyQuestNpc(npcs.Npc5263Data.alias, 3)
end

function Quest74082:OnSubStart7408214(arg1)
    print("OnSubStart7408214")
    this:SafeDestroyQuestNpc(npcs.Npc5263Data.alias, 3)
end

function Quest74082:OnSubFinish7408214(arg1)
    print("OnSubFinish7408214")
end

function Quest74082:OnSubStart7408209(arg1)
    print("OnSubStart7408209")
end

function Quest74082:OnSubFinish7408209(arg1)
    print("OnSubFinish7408209")
    this:ActorDestroy("Q7408202EnterTriggerin")
end

function Quest74082:OnSubStart7408202(arg1)
    print("OnSubStart7408202")
    actorMgr:CreateActorWithPos("Q7408202EnterTriggerin", "Actor/Gadget/Q7408202EnterTriggerin", 70900002, 0, points.TPos_Q7408202EnterTriggerin.pos, points.TPos_Q7408202EnterTriggerin.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7408203EnterTriggerin", "Actor/Gadget/Q7408203EnterTriggerin", 70900002, 0, points.TPos_Q7408203EnterTriggerin.pos, points.TPos_Q7408203EnterTriggerin.rot, true, false, 3)
end

function Quest74082:OnSubFinish7408202(arg1)
    print("OnSubFinish7408202")
    this:ActorDestroy("Q7408202EnterTriggerin")
end

function Quest74082:OnSubStart7408208(arg1)
    print("OnSubStart7408208")
    this:ActorDestroy("Q7408202EnterTriggerin")
end

function Quest74082:OnSubFinish7408208(arg1)
    print("OnSubFinish7408208")
end

function Quest74082:OnSubStart7408215(arg1)
    print("OnSubStart7408215")
end

function Quest74082:OnSubFinish7408215(arg1)
    print("OnSubFinish7408215")
end

function Quest74082:OnSubStart7408205(arg1)
    print("OnSubStart7408205")
    this:ActorDestroy("Q7408202EnterTriggerin")
end

function Quest74082:OnSubFinish7408205(arg1)
    print("OnSubFinish7408205")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId05)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21112Data.alias, 3)
end

function Quest74082:OnSubStart7408213(arg1)
    print("OnSubStart7408213")
end

function Quest74082:OnSubFinish7408213(arg1)
    print("OnSubFinish7408213")
    this:SafeDestroyQuestNpc(npcs.Npc21112Data.alias, 3)
end

function Quest74082:OnSubStart7408206(arg1)
    print("OnSubStart7408206")
end

function Quest74082:OnSubFinish7408206(arg1)
    print("OnSubFinish7408206")
end

function Quest74082:OnSubStart7408207(arg1)
    print("OnSubStart7408207")
    this:CreateQuestNpc(arg1, npcs.Npc5325Data.id, 0)
    this:RequestInteraction(npcs.Npc5325Data.alias)
end

function Quest74082:OnSubFinish7408207(arg1)
    print("OnSubFinish7408207")
    this:SetNavigationByMainId(74083, true)
    this:SafeDestroyQuestNpc(npcs.Npc5325Data.alias, 3)
end

function Quest74082:OnSubStart7408204(arg1)
    print("OnSubStart7408204")
end

function Quest74082:OnSubFinish7408204(arg1)
    print("OnSubFinish7408204")
end

function Quest74082:OnSubStart7408210(arg1)
    print("OnSubStart7408210")
end

function Quest74082:OnSubFinish7408210(arg1)
    print("OnSubFinish7408210")
end

function Quest74082:OnSubStart7408211(arg1)
    print("OnSubStart7408211")
end

function Quest74082:OnSubFinish7408211(arg1)
    print("OnSubFinish7408211")
end

function Quest74082:OnSubStart7408212(arg1)
    print("OnSubStart7408212")
end

function Quest74082:OnSubFinish7408212(arg1)
    print("OnSubFinish7408212")
end

return Quest74082
