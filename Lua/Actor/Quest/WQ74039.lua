require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74039 = class("Quest74039", QuestActorProxy)
Quest74039.defaultAlias = "Quest74039"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74039:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74039:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7403901"] = self.OnSubStart7403901,
        ["7403909"] = self.OnSubStart7403909,
        ["7403902"] = self.OnSubStart7403902,
        ["7403903"] = self.OnSubStart7403903,
        ["7403904"] = self.OnSubStart7403904,
        ["7403905"] = self.OnSubStart7403905,
        ["7403906"] = self.OnSubStart7403906,
        ["7403907"] = self.OnSubStart7403907,
        ["7403908"] = self.OnSubStart7403908
    }
end

function Quest74039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7403901"] = self.OnSubFinish7403901,
        ["7403909"] = self.OnSubFinish7403909,
        ["7403902"] = self.OnSubFinish7403902,
        ["7403903"] = self.OnSubFinish7403903,
        ["7403904"] = self.OnSubFinish7403904,
        ["7403905"] = self.OnSubFinish7403905,
        ["7403906"] = self.OnSubFinish7403906,
        ["7403907"] = self.OnSubFinish7403907,
        ["7403908"] = self.OnSubFinish7403908
    }
end

function Quest74039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7403901"] = self.OnSubFailed7403901}
end

function Quest74039:Start()
    print("Start")
end

function Quest74039:OnDestroy()
    print("OnDestroy")
end

function Quest74039:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74039:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74039:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74039:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74039:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74039:OnSubStart7403901(arg1)
    print("OnSubStart7403901")
    this:CreateQuestNpc(arg1, npcs.Npc5305Data.id, 0)
end

function Quest74039:OnSubFinish7403901(arg1)
    print("OnSubFinish7403901")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 3, nil, nil)
end

function Quest74039:OnSubFailed7403901(arg1)
    print("OnSubFailed7403901")
    this:SafeDestroyQuestNpc(npcs.Npc5305Data.alias, 3)
end

function Quest74039:OnSubStart7403909(arg1)
    print("OnSubStart7403909")
    this:CreateQuestNpc(arg1, npcs.Npc5305Data.id, 0)
    actorUtils.FinishQuestID(false, 7403909)
end

function Quest74039:OnSubFinish7403909(arg1)
    print("OnSubFinish7403909")
end

function Quest74039:OnSubStart7403902(arg1)
    print("OnSubStart7403902")
    this:CreateQuestNpc(arg1, npcs.Npc5305Data.id, 0)
end

function Quest74039:OnSubFinish7403902(arg1)
    print("OnSubFinish7403902")
    this:TransmitPlayerByQuestId(7403902, 2)
end

function Quest74039:OnSubStart7403903(arg1)
    print("OnSubStart7403903")
end

function Quest74039:OnSubFinish7403903(arg1)
    print("OnSubFinish7403903")
end

function Quest74039:OnSubStart7403904(arg1)
    print("OnSubStart7403904")
end

function Quest74039:OnSubFinish7403904(arg1)
    print("OnSubFinish7403904")
    this:TransmitPlayerByQuestId(7403904, 3)
end

function Quest74039:OnSubStart7403905(arg1)
    print("OnSubStart7403905")
end

function Quest74039:OnSubFinish7403905(arg1)
    print("OnSubFinish7403905")
end

function Quest74039:OnSubStart7403906(arg1)
    print("OnSubStart7403906")
end

function Quest74039:OnSubFinish7403906(arg1)
    print("OnSubFinish7403906")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5305Data.alias)
end

function Quest74039:OnSubStart7403907(arg1)
    print("OnSubStart7403907")
    actorMgr:CreateActorWithPos("Q7403907Trigger", "Actor/Gadget/Q7403907Trigger", 70900002, 0, {x = 2516.97, y = 415.482, z = 4527.596}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74039:OnSubFinish7403907(arg1)
    print("OnSubFinish7403907")
end

function Quest74039:OnSubStart7403908(arg1)
    print("OnSubStart7403908")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21069Data.id, 7403908, 0, 10, 1)
end

function Quest74039:OnSubFinish7403908(arg1)
    print("OnSubFinish7403908")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21069Data.alias)
end

return Quest74039
