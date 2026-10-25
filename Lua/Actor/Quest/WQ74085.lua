require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74085 = class("Quest74085", QuestActorProxy)
Quest74085.defaultAlias = "Quest74085"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74085:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74085:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7408501"] = self.OnSubStart7408501,
        ["7408502"] = self.OnSubStart7408502,
        ["7408522"] = self.OnSubStart7408522,
        ["7408521"] = self.OnSubStart7408521,
        ["7408520"] = self.OnSubStart7408520,
        ["7408503"] = self.OnSubStart7408503,
        ["7408504"] = self.OnSubStart7408504,
        ["7408505"] = self.OnSubStart7408505,
        ["7408509"] = self.OnSubStart7408509,
        ["7408510"] = self.OnSubStart7408510,
        ["7408511"] = self.OnSubStart7408511,
        ["7408512"] = self.OnSubStart7408512,
        ["7408513"] = self.OnSubStart7408513,
        ["7408514"] = self.OnSubStart7408514,
        ["7408515"] = self.OnSubStart7408515,
        ["7408516"] = self.OnSubStart7408516,
        ["7408517"] = self.OnSubStart7408517,
        ["7408523"] = self.OnSubStart7408523,
        ["7408518"] = self.OnSubStart7408518,
        ["7408519"] = self.OnSubStart7408519,
        ["7408506"] = self.OnSubStart7408506
    }
end

function Quest74085:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7408501"] = self.OnSubFinish7408501,
        ["7408502"] = self.OnSubFinish7408502,
        ["7408522"] = self.OnSubFinish7408522,
        ["7408521"] = self.OnSubFinish7408521,
        ["7408520"] = self.OnSubFinish7408520,
        ["7408503"] = self.OnSubFinish7408503,
        ["7408504"] = self.OnSubFinish7408504,
        ["7408505"] = self.OnSubFinish7408505,
        ["7408509"] = self.OnSubFinish7408509,
        ["7408510"] = self.OnSubFinish7408510,
        ["7408511"] = self.OnSubFinish7408511,
        ["7408512"] = self.OnSubFinish7408512,
        ["7408513"] = self.OnSubFinish7408513,
        ["7408514"] = self.OnSubFinish7408514,
        ["7408515"] = self.OnSubFinish7408515,
        ["7408516"] = self.OnSubFinish7408516,
        ["7408517"] = self.OnSubFinish7408517,
        ["7408523"] = self.OnSubFinish7408523,
        ["7408518"] = self.OnSubFinish7408518,
        ["7408519"] = self.OnSubFinish7408519,
        ["7408506"] = self.OnSubFinish7408506
    }
end

function Quest74085:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74085:Start()
    print("Start")
end

function Quest74085:OnDestroy()
    print("OnDestroy")
end

function Quest74085:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74085:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74085:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74085:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74085:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74085:OnSubStart7408501(arg1)
    print("OnSubStart7408501")
    actorMgr:CreateActorWithPos("Q7408501EnterTriggerin", "Actor/Gadget/Q7408501EnterTriggerin", 70900002, 0, points.TPos_Q7408501EnterTriggerin.pos, points.TPos_Q7408501EnterTriggerin.rot, true, false, 3)
end

function Quest74085:OnSubFinish7408501(arg1)
    print("OnSubFinish7408501")
end

function Quest74085:OnSubStart7408502(arg1)
    print("OnSubStart7408502")
    this:CreateQuestNpc(arg1, npcs.Npc5325Data.id, 0)
    this:RequestInteraction(npcs.Npc5325Data.alias)
end

function Quest74085:OnSubFinish7408502(arg1)
    print("OnSubFinish7408502")
end

function Quest74085:OnSubStart7408522(arg1)
    print("OnSubStart7408522")
end

function Quest74085:OnSubFinish7408522(arg1)
    print("OnSubFinish7408522")
end

function Quest74085:OnSubStart7408521(arg1)
    print("OnSubStart7408521")
end

function Quest74085:OnSubFinish7408521(arg1)
    print("OnSubFinish7408521")
end

function Quest74085:OnSubStart7408520(arg1)
    print("OnSubStart7408520")
end

function Quest74085:OnSubFinish7408520(arg1)
    print("OnSubFinish7408520")
end

function Quest74085:OnSubStart7408503(arg1)
    print("OnSubStart7408503")
    this:CreateQuestNpc(arg1, npcs.Npc5325Data.id, 0)
end

function Quest74085:OnSubFinish7408503(arg1)
    print("OnSubFinish7408503")
end

function Quest74085:OnSubStart7408504(arg1)
    print("OnSubStart7408504")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7408504, function(arg1)
            actorUtils.FinishQuestID(false, 7408504)
        end, nil, nil, false)
    end)
end

function Quest74085:OnSubFinish7408504(arg1)
    print("OnSubFinish7408504")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7408501)
    this:SafeDestroyQuestNpc(npcs.Npc5325Data.alias, 3)
end

function Quest74085:OnSubStart7408505(arg1)
    print("OnSubStart7408505")
    this:CreateQuestNpc(arg1, npcs.Npc5108Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5109Data.id, 0)
    actorMgr:CreateActorWithPos("Q7408505EnterTriggerin", "Actor/Gadget/Q7408505EnterTriggerin", 70900002, 0, points.TPos_Q7408505EnterTriggerin.pos, points.TPos_Q7408505EnterTriggerin.rot, true, false, 3)
end

function Quest74085:OnSubFinish7408505(arg1)
    print("OnSubFinish7408505")
    this:ClearNarratorTask()
    this:CallDelay(0.3, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId7408502)
    end)
end

function Quest74085:OnSubStart7408509(arg1)
    print("OnSubStart7408509")
    actorMgr:CreateActorWithPos("Q7408509EnterTriggerin", "Actor/Gadget/Q7408509EnterTriggerin", 70900002, 0, points.TPos_Q7408509EnterTriggerin.pos, points.TPos_Q7408509EnterTriggerin.rot, true, false, 3)
end

function Quest74085:OnSubFinish7408509(arg1)
    print("OnSubFinish7408509")
    this:SafeDestroyQuestNpc(npcs.Npc5108Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5109Data.alias, 3)
end

function Quest74085:OnSubStart7408510(arg1)
    print("OnSubStart7408510")
    this:CreateQuestNpc(arg1, npcs.Npc5325Data.id, 0)
    this:RequestInteraction(npcs.Npc5325Data.alias)
end

function Quest74085:OnSubFinish7408510(arg1)
    print("OnSubFinish7408510")
    this:SafeDestroyQuestNpc(npcs.Npc5325Data.alias, 3)
end

function Quest74085:OnSubStart7408511(arg1)
    print("OnSubStart7408511")
end

function Quest74085:OnSubFinish7408511(arg1)
    print("OnSubFinish7408511")
end

function Quest74085:OnSubStart7408512(arg1)
    print("OnSubStart7408512")
    this:CreateQuestNpc(arg1, npcs.Npc5325Data.id, 0)
    this:RequestInteraction(npcs.Npc5325Data.alias)
end

function Quest74085:OnSubFinish7408512(arg1)
    print("OnSubFinish7408512")
    this:SafeDestroyQuestNpc(npcs.Npc5325Data.alias, 3)
end

function Quest74085:OnSubStart7408513(arg1)
    print("OnSubStart7408513")
end

function Quest74085:OnSubFinish7408513(arg1)
    print("OnSubFinish7408513")
end

function Quest74085:OnSubStart7408514(arg1)
    print("OnSubStart7408514")
    this:CreateQuestNpc(arg1, npcs.Npc5325Data.id, 0)
    this:RequestInteraction(npcs.Npc5325Data.alias)
end

function Quest74085:OnSubFinish7408514(arg1)
    print("OnSubFinish7408514")
    this:SafeDestroyQuestNpc(npcs.Npc5325Data.alias, 3)
end

function Quest74085:OnSubStart7408515(arg1)
    print("OnSubStart7408515")
end

function Quest74085:OnSubFinish7408515(arg1)
    print("OnSubFinish7408515")
end

function Quest74085:OnSubStart7408516(arg1)
    print("OnSubStart7408516")
    this:NpcCreateWithNpcTrigger(npcs.PaimonData.id, 7408516, 0, 12)
    this:RequestInteraction(npcs.PaimonData.alias)
end

function Quest74085:OnSubFinish7408516(arg1)
    print("OnSubFinish7408516")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest74085:OnSubStart7408517(arg1)
    print("OnSubStart7408517")
    actorMgr:CreateActorWithPos("Q7408517EnterTrigger", "Actor/Gadget/Q7408517EnterTrigger", 70900002, 0, {x = 3804.635, y = 379.558, z = 3438.135}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId7408503)
    end)
end

function Quest74085:OnSubFinish7408517(arg1)
    print("OnSubFinish7408517")
end

function Quest74085:OnSubStart7408523(arg1)
    print("OnSubStart7408523")
    actorMgr:CreateActorWithPos("Q7408523EnterTrigger", "Actor/Gadget/Q7408523EnterTrigger", 70900002, 0, {x = 3755.661, y = 460.299, z = 3205.052}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74085:OnSubFinish7408523(arg1)
    print("OnSubFinish7408523")
end

function Quest74085:OnSubStart7408518(arg1)
    print("OnSubStart7408518")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7408518, function(arg1)
            actorUtils.FinishQuestID(false, 7408518)
        end, nil, nil, false)
    end)
end

function Quest74085:OnSubFinish7408518(arg1)
    print("OnSubFinish7408518")
    this:ActorDestroy("Q7408518Trigger")
end

function Quest74085:OnSubStart7408519(arg1)
    print("OnSubStart7408519")
    this:CreateQuestNpc(arg1, npcs.Npc21113Data.id, 0)
    this:RequestInteraction(npcs.Npc21113Data.alias)
end

function Quest74085:OnSubFinish7408519(arg1)
    print("OnSubFinish7408519")
    this:SafeDestroyQuestNpc(npcs.Npc21113Data.alias, 3)
end

function Quest74085:OnSubStart7408506(arg1)
    print("OnSubStart7408506")
end

function Quest74085:OnSubFinish7408506(arg1)
    print("OnSubFinish7408506")
end

return Quest74085
